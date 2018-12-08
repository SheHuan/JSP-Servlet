package com.servlet.demo.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class LogFilter implements Filter {
    // FilterConfig可用于访问Filter的配置信息
    private FilterConfig config;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        ServletContext context = config.getServletContext();
        long before = System.currentTimeMillis();
        System.out.println("开始过滤");
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        System.out.println("Filter 已拦截到用户的请求地址：" + httpServletRequest.getServletPath());
        // Filter 只是链式处理，请求依然放行到目标地址
        filterChain.doFilter(servletRequest, servletResponse);
        long after = System.currentTimeMillis();
        System.out.println("过滤结束");
        System.out.println("请求被定位到" + httpServletRequest.getRequestURI() + " 花费的时间为：" + (after - before));
    }

    @Override
    public void destroy() {
        config = null;
    }
}
