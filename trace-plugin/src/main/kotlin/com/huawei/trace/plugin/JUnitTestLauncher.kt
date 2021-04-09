package com.huawei.trace.plugin

import org.junit.platform.engine.discovery.DiscoverySelectors
import org.junit.platform.launcher.LauncherDiscoveryRequest
import org.junit.platform.launcher.core.LauncherConfig
import org.junit.platform.launcher.core.LauncherDiscoveryRequestBuilder
import org.junit.platform.launcher.core.LauncherFactory
import org.junit.vintage.engine.VintageTestEngine


class JUnitTestLauncher {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            val testId = args.first()
            val request: LauncherDiscoveryRequest = LauncherDiscoveryRequestBuilder.request()
                .selectors(
                    DiscoverySelectors.selectUniqueId(testId)
                )
                .build()

            LauncherFactory.create(
                    LauncherConfig.builder().addTestEngines(VintageTestEngine()).build()
            ).apply { execute(request) }
        }
    }
}