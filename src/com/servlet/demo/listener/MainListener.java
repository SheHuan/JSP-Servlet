package com.servlet.demo.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 监听Web应用的启动关闭
 */
@WebListener
public class MainListener implements ServletContextListener {
    // 应用启动时调用
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("应用已启动...");
    }

    // 应用关闭时调用
    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("应用已关闭...");
    }
}
