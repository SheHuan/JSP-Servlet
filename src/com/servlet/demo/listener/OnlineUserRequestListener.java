package com.servlet.demo.listener;

import com.servlet.demo.OnlineUser;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@WebListener
public class OnlineUserRequestListener implements ServletRequestListener {
    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        ServletContext application = sre.getServletContext();
        HttpServletRequest request = (HttpServletRequest) sre.getServletRequest();
        HttpSession session = request.getSession(true);
        String sessionId = session.getId();
        String ip = request.getRemoteAddr();
        String page = request.getRequestURI();
        String username = (String) session.getAttribute("username");
        username = (username == null) ? "游客" : username;

        Map<String, OnlineUser> onlineUser = (Map<String, OnlineUser>) application.getAttribute("onlineUser");
        if (onlineUser == null) {
            onlineUser = new HashMap<>();
        }
        if (onlineUser.containsKey(sessionId)) {
            OnlineUser user = onlineUser.get(sessionId);
            user.setPage(page);
            user.setTime(System.currentTimeMillis());
        } else {
            OnlineUser user = new OnlineUser(sessionId, ip, page, username, System.currentTimeMillis());
            onlineUser.put(sessionId, user);
        }
        application.setAttribute("onlineUser", onlineUser);
    }

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {

    }
}
