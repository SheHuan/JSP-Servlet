<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application测试</title>
</head>
<body>
<%!
    private int i = 0;
%>
<%
    application.setAttribute("count", ++i);
    application.setAttribute("type", "6666");
    application.setAttribute("type", "8888");
    application.removeAttribute("type");
%>
<%=i%>
</body>
</html>
