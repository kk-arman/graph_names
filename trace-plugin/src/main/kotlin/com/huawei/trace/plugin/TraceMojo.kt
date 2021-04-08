package com.huawei.trace.plugin

import com.opencsv.CSVReaderBuilder
import com.sun.jdi.AbsentInformationException
import com.sun.jdi.Bootstrap
import com.sun.jdi.ClassType
import com.sun.jdi.VMDisconnectedException
import com.sun.jdi.event.*
import com.sun.jdi.request.BreakpointRequest
import com.sun.jdi.request.StepRequest
import org.apache.maven.plugin.AbstractMojo
import org.apache.maven.plugin.logging.Log
import org.apache.maven.plugins.annotations.LifecyclePhase
import org.apache.maven.plugins.annotations.Mojo
import org.apache.maven.plugins.annotations.Parameter
import org.apache.maven.project.MavenProject
import org.junit.platform.engine.discovery.DiscoverySelectors
import org.junit.platform.engine.support.descriptor.MethodSource
import org.junit.platform.launcher.LauncherDiscoveryRequest
import org.junit.platform.launcher.TestIdentifier
import org.junit.platform.launcher.TestPlan
import org.junit.platform.launcher.core.LauncherDiscoveryRequestBuilder
import org.junit.platform.launcher.core.LauncherFactory
import java.io.BufferedOutputStream
import java.io.File
import java.io.FileReader
import java.net.URLClassLoader
import java.nio.file.Files
import java.nio.file.Paths


@Mojo(name = "trace", defaultPhase = LifecyclePhase.TEST)
class TraceMojo : AbstractMojo() {
    @Parameter(defaultValue = "\${project}", required = true, readonly = true)
    lateinit var project: MavenProject

    @Parameter(property = "csv", required = true, readonly = true)
    lateinit var csv: String

    @Parameter(property = "repoName", required = true, readonly = true)
    lateinit var repoName: String

    @Suppress("UNCHECKED_CAST")
    override fun execute() {
        val classpath: MutableList<String> = project.testClasspathElements.mapTo(mutableListOf()) { "$it" }
        val extendClasspath = project.testClasspathElements.mapTo(mutableListOf()) { "$it" }
        val uniqueNames = HashSet<String>()
        var mainDir = project
        while (mainDir.parent != null) {
            if (mainDir.parent.basedir == null) {
                break
            }
            mainDir = mainDir.parent
        }

        Files.walk(mainDir.basedir.toPath()).forEach { file ->
            if (file.toString().endsWith(".jar")) {
                val name = file.toString().split("/").last().removeSuffix(".jar")
                if (name !in uniqueNames) {
                    uniqueNames += name
                    extendClasspath += file.toString()
                }
            }
        }

        val testIdentifiers = withContextClassLoader(extendClasspath) { traverse(classpath) }
        val jvmOptions = "-cp ${getPluginJarLocation()}" +
                File.pathSeparator +
                extendClasspath.joinToString(separator = File.pathSeparator) +
                " -Xmx4g"
//                 val jvmOptions = createTempFile()
//                 .apply {
//                     deleteOnExit()
//                     outputStream()
//                             .buffered()
//                             .use {
//                                 it.write("-cp ".toByteArray())
//                                 it.write("${getPluginJarLocation()};${classpath.joinToString(separator = ";")}".toByteArray())
//                             }
//                 }

        val csvReader = CSVReaderBuilder(FileReader(csv)).withSkipLines(1).build()
        var nextRecord: Array<String>?
        val dict = mutableMapOf<String, MutableSet<String>>()
        nextRecord = csvReader.readNext()

        // CSV format: id, repoName, pathToFile, methodName
        while (nextRecord != null) {
            if (nextRecord[1] == repoName) {
                val name = nextRecord[2].split("/").last().split(".").first()
                dict.getOrPut(name) { mutableSetOf() }.add(nextRecord[3])
            }
            nextRecord = csvReader.readNext()
        }

        for (testIdentifier in testIdentifiers) {
            try {
                val out = File(project.basedir, "trace###${testIdentifier.displayName}.txt")
                val className = (testIdentifier.source.get() as MethodSource).className.split(".").last()

                if (className in dict) {
                    val testName = testIdentifier.displayName.takeWhile { it != '[' }
                    if (testName in dict[className]!!) {
                        out.outputStream().buffered().use { stream ->
                            traceTests(testIdentifier, JUnitTestLauncher::class.java, jvmOptions, stream, log)
                        }
                    }
                }
            } catch (e: Exception) {
                log.error("Unhandled exception: $e")
            }
        }
    }

    private fun traverse(classpath: List<String>): List<TestIdentifier> {
        val result = ArrayList<TestIdentifier>()
        val request: LauncherDiscoveryRequest = LauncherDiscoveryRequestBuilder.request()
                .selectors(DiscoverySelectors.selectClasspathRoots(classpath.mapTo(mutableSetOf()) { Paths.get(it) }))
                .build()
        val testPlan = LauncherFactory.create().discover(request)

        fun traverse(testPlan: TestPlan, identifiers: Collection<TestIdentifier>) {
            for (identifier in identifiers) {
                if (identifier.isTest) {
                    result += identifier
                }

                traverse(testPlan, testPlan.getChildren(identifier))
            }
        }

        traverse(testPlan, testPlan.roots)
        return result
    }

    private fun traceTests(
            testIdentifier: TestIdentifier,
            classToDebug: Class<*>,
            jvmOptions: String,
            outputStream: BufferedOutputStream,
            log: Log
    ) {
        try {
            val launchingConnector = Bootstrap.virtualMachineManager().defaultConnector()
            val env = launchingConnector.defaultArguments()

            env["main"]?.apply {
                setValue("${classToDebug.name} ${testIdentifier.uniqueId}")
            } ?: error("Can't find 'main' argument")
            env["options"]?.apply {
                setValue(jvmOptions)
//                    setValue("@${jvmOptions.path}")
            } ?: error("Can't find 'options' argument")

            val fullName = (testIdentifier.source.get() as MethodSource).className
            val className = fullName.split(".").last() + ".java"

            val virtualMachine = launchingConnector.launch(env).apply {
                eventRequestManager().createClassPrepareRequest().apply {
                    addSourceNameFilter(className)
                    enable()
                }
            }

            outputStream.write("${fullName}###${testIdentifier.displayName}$END_LINE".toByteArray())
            try {
                var counter = 0

                while (counter < 10000) {
                    val eventSet = virtualMachine.eventQueue().remove(180000) ?: break

                    for (event in eventSet) {
                        when (event) {
                            is VMStartEvent -> Unit
                            is ClassPrepareEvent -> {
                                event.request().disable()
                                val classType: ClassType = event.referenceType() as ClassType

                                for (location in classType.allLineLocations()) {
                                    if ((location.method().name() == (testIdentifier.source.get() as MethodSource).methodName)) {
                                        val bpReq: BreakpointRequest = virtualMachine.eventRequestManager()
                                                .createBreakpointRequest(location)
                                        bpReq.enable()
                                        break
                                    }
                                }
                            }
                            is BreakpointEvent -> {
                                event.request().disable()

                                try {
                                    val location = event.thread().frame(0).location()
                                    outputStream.write(("${location.sourceName()}###${location.method().name()}: " +
                                            "${location.lineNumber()}$END_LINE").toByteArray())
                                } catch (e: AbsentInformationException) {
                                    log.warn("Unknown source$END_LINE")
                                    e.printStackTrace()
                                }

                                createStepRequest(event, StepRequest.STEP_INTO)
                            }
                            is StepEvent -> {
                                var locationName = ""
                                event.request().disable()

                                try {
                                    val location = event.thread().frame(0).location()
                                    locationName = location.sourceName()
                                    counter++

                                    outputStream.write(("${location.sourceName()}###${location.method().name()}: " +
                                            "${location.lineNumber()}$END_LINE").toByteArray())
                                } catch (e: AbsentInformationException) {
                                    log.warn("Unknown source$END_LINE")
                                }

                                if (className == locationName) {
                                    createStepRequest(event, StepRequest.STEP_INTO)
                                } else {
                                    createStepRequest(event, StepRequest.STEP_OVER)
                                }
                            }
                            is VMDisconnectEvent, is VMDeathEvent -> {
                            }
                            else ->
                                log.info("Unknown event: $event$END_LINE")
                        }
                        virtualMachine.resume()
                    }
                }
            } catch (e: VMDisconnectedException) {
                log.error("VM disconnection exception: $e")
            } catch (e: Exception) {
                outputStream.write("Unhandled exception: $e$END_LINE".toByteArray())
            } finally {
                log.info("${testIdentifier.displayName} has been traced")
            }
        } catch (e: Exception) {
            log.error("Unhandled exception: $e")
        }
    }

    private fun createStepRequest(event: Event, mode: Int) {
        val thread = when (event) {
            is ClassPrepareEvent -> event.thread()
            is StepEvent -> event.thread()
            is BreakpointEvent -> event.thread()
            else -> error("Couldn't get thread from event: $event")
        }

        event.virtualMachine().eventRequestManager().createStepRequest(
                thread,
                StepRequest.STEP_MIN,
                mode
        ).apply {
            addClassExclusionFilter("java.lang.*")
            addClassExclusionFilter("sun.reflect.*")
            addClassExclusionFilter("java.util.*")
            enable()
        }
    }

    private fun getPluginJarLocation() =
            File(JUnitTestLauncher::class.java.protectionDomain.codeSource.location.toURI()).path

    companion object {
        private val END_LINE = System.lineSeparator()
    }
}

inline fun <T> withContextClassLoader(classpath: Collection<String>, block: () -> T): T {
    val oldClassloader = Thread.currentThread().contextClassLoader

    try {
        val cp = classpath.map { File(it).toURI().toURL() }
        Thread.currentThread().contextClassLoader = URLClassLoader(cp.toTypedArray(), oldClassloader)
        return block()
    } finally {
        Thread.currentThread().contextClassLoader = oldClassloader
    }
}