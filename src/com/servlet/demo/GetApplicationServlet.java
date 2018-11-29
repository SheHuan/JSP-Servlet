package com.servlet.demo;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "get_application", urlPatterns = "/get_application")
public class GetApplicationServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        out.println("<html><head><title>");
        out.println("测试application共享数据");
        out.println("</title></head><body>");
        ServletContext servletContext = getServletContext();
        out.println(servletContext.getAttribute("count"));
        out.println("</body></html>");
    }
}
