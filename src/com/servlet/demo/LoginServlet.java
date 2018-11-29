package com.servlet.demo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/result"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String errMsg = "";
        // Servlet 本身不会输出响应到客户端、因此必须将请求转发
        RequestDispatcher dispatcher;
        // 获取请求参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username != null && username.equals("admin") && password != null && password.equals("111111")) {
            // 获取 session
            HttpSession session = req.getSession();
            session.setAttribute("username", username);
            // 获取转发对象
            dispatcher = req.getRequestDispatcher("/login/welcome.jsp");
            // 转发请求
            dispatcher.forward(req, resp);
        } else {
            errMsg = "用户名或密码错误，请重新输入！";
            dispatcher = req.getRequestDispatcher("/login/login.jsp");
            req.setAttribute("error", errMsg);
            dispatcher.forward(req, resp);
        }
    }
}
