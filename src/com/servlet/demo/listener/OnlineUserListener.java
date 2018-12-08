package com.servlet.demo.listener;

import com.servlet.demo.OnlineUser;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Map;

@WebListener
public class OnlineUserListener implements ServletContextListener {
    private final int MAX = 2 * 60 * 1000;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext application = sce.getServletContext();
        new Timer(1000 * 5, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Map<String, OnlineUser> onlineUser = (Map<String, OnlineUser>) application.getAttribute("onlineUser");
                for (String sessionId : onlineUser.keySet()) {
                    if (System.currentTimeMillis() - onlineUser.get(sessionId).getTime() > MAX) {
                        onlineUser.remove(sessionId);
                    }
                }
                application.setAttribute("onlineUser", onlineUser);
            }
        }).start();
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
