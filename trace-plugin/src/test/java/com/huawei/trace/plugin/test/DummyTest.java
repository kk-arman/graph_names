package com.huawei.trace.plugin.test;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;


public class DummyTest {

    @Test
    public void test1() {
        int a = Example1.getFromExample2();
        System.out.println("This is");
        System.out.println("a");
        System.out.println("dummy test");
        Assertions.assertEquals(4, 2 + 2);
    }

    @Test
    public void test2() {
        Assertions.assertEquals(4, 2 + 2);
    }

    @Test
    public void test3() {
        Assertions.assertTrue(true);
    }
}
