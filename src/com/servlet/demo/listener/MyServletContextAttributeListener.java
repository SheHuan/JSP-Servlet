package com.servlet.demo.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * 监听ServletContext范围（application）内属性的变化
 */

@WebListener
public class MyServletContextAttributeListener implements ServletContextAttributeListener {
    @Override
    public void attributeAdded(ServletContextAttributeEvent event) {
        ServletContext application = event.getServletContext();
        String name = event.getName();
        Object value = event.getValue();
        System.out.println(application + "范围内添加了名为：" + name + "，值为：" + value + "的属性");
    }

    @Override
    public void attributeRemoved(ServletContextAttributeEvent event) {
        ServletContext application = event.getServletContext();
        String name = event.getName();
        Object value = event.getValue();
        System.out.println(application + "范围内删除了名为：" + name + "，值为：" + value + "的属性");
    }

    @Override
    public void attributeReplaced(ServletContextAttributeEvent event) {
        ServletContext application = event.getServletContext();
        String name = event.getName();
        Object value = event.getValue();
        System.out.println(application + "范围内替换了名为：" + name + "，值为：" + value + "的属性");
    }
}
