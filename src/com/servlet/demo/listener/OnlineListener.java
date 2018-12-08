package com.servlet.demo.listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.HashMap;
import java.util.Map;

/**
 * 监听session的开始结束
 */
@WebListener
public class OnlineListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        ServletContext application = session.getServletContext();
        // 获取session ID
        String sessionId = session.getId();
        // 如果是一次新的会话
        if (session.isNew()) {
            String username = (String) session.getAttribute("username");
            username = (username == null) ? "游客" : username;
            Map<String, String> online = (Map<String, String>) application.getAttribute("online");
            if (online == null) {
                online = new HashMap<>();
            }
            // 将用户在线信息放入Map
            online.put(sessionId, username);
            application.setAttribute("online", online);
        }
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        ServletContext application = session.getServletContext();
        String sessionId = session.getId();
        Map<String, String> online = (Map<String, String>) application.getAttribute("online");
        if (online != null) {
            online.remove(sessionId);
        }
        application.setAttribute("online", online);
    }
}
