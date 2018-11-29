<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application测试</title>
</head>
<body>
<h1>获取web.xml中的配置参数</h1>
<%
    String username = application.getInitParameter("username");
    String password = application.getInitParameter("password");
%>
username:<%=username%><br/>
password:<%=password%>
</body>
</html>
