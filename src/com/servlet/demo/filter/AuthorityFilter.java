package com.servlet.demo.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "authority",
        urlPatterns = "/*",
        initParams = {@WebInitParam(name = "encoding", value = "utf-8"),
                @WebInitParam(name = "loginPage", value = "/login/login.jsp"),
                @WebInitParam(name = "loginResultPage", value = "/result")})
public class AuthorityFilter implements Filter {
    private FilterConfig config;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        // 获取该Filter的配置参数
        String encoding = config.getInitParameter("encoding");
        String loginPage = config.getInitParameter("loginPage");
        String loginResultPage = config.getInitParameter("loginResultPage");

        servletRequest.setCharacterEncoding(encoding);
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpSession httpSession = httpServletRequest.getSession(true);
        // 获取用户请求的页面
        String requestPath = httpServletRequest.getServletPath();
        if (httpSession.getAttribute("username") == null
                && !requestPath.endsWith(loginPage)
                && !requestPath.endsWith(loginResultPage)) {
            servletRequest.setAttribute("error", "您还没登录...");
            servletRequest.getRequestDispatcher(loginPage).forward(servletRequest, servletResponse);
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {
        config = null;
    }
}
