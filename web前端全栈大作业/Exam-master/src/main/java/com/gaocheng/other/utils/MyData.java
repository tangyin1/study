package com.gaocheng.other.utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/05/04/21:35
 * @Description:
 */
@Component
public class MyData {

    public static String address;
    public static String port;
    public static String context;
    public static String resourcePath;

    @Value("${gaocheng.address}")
    public void setAddress(String address) {
        MyData.address = address;
    }

    @Value("${server.port}")
    public void setPort(String port) {
        MyData.port = port;
    }

    @Value("${server.servlet.context-path}")
    public void setContext(String context) {
        MyData.context = context;
    }

    @Value("${gaocheng.resource-path}")
    public void setResourcePath(String resourcePath) {
        MyData.resourcePath = resourcePath;
    }
}
