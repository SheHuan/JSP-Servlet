<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取用户信息页面的请求参数</title>
</head>
<body>
<%
    Enumeration<String> headers = request.getHeaderNames();
    while (headers.hasMoreElements()) {
        String header = headers.nextElement();
        out.println(header + "-->" + request.getHeader(header) + "<br/>");
    }
    out.println("<hr/>");
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String[] colors = request.getParameterValues("color");
    String country = request.getParameter("country");
%>
姓名：<%=name%>
<hr/>
性别：<%=gender%>
<hr/>
颜色：
<%
    for (String c : colors) {
        out.println(c);
    }
%>
<hr/>
国家：<%=country%>
</body>
</html>
