package com.servlet.demo.listener;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;

/**
 * ServletRequestListener 监听用户请求
 * ServletRequestAttributeListener 监听ServletRequest范围（request）范围内属性的变化
 */
@WebListener
public class RequestListener implements ServletRequestListener, ServletRequestAttributeListener {
    /**
     * 用户请求到达时调用
     */
    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
        System.out.println("---发向" + request.getRequestURI() + "的请求被初始化");
    }

    /**
     * 用户请求结束时调用
     */
    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
        System.out.println("---发向" + request.getRequestURI() + "的请求被销毁");
    }

    /**
     * 向request范围内添加属性时调用
     */
    @Override
    public void attributeAdded(ServletRequestAttributeEvent event) {
        ServletRequest request = event.getServletRequest();
        String name = event.getName();
        Object value = event.getValue();
        System.out.println(request + "范围内添加了名为：" + name + "，值为：" + value + "的属性");
    }

    /**
     * 从request范围内删除属性时调用
     */
    @Override
    public void attributeRemoved(ServletRequestAttributeEvent event) {
        ServletRequest request = event.getServletRequest();
        String name = event.getName();
        Object value = event.getValue();
        System.out.println(request + "范围内删除了名为：" + name + "，值为：" + value + "的属性");
    }

    /**
     * 当request范围内属性被替换时调用
     */
    @Override
    public void attributeReplaced(ServletRequestAttributeEvent event) {
        ServletRequest request = event.getServletRequest();
        String name = event.getName();
        Object value = event.getValue();
        System.out.println(request + "范围内替换了名为：" + name + "，值为：" + value + "的属性");
    }
}
