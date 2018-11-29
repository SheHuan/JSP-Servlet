<%@ page import="com.servlet.demo.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/25
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试 request范围内的数据存储</title>
</head>
<body>
<%
    User user = (User) request.getAttribute("user");
%>
姓名：<%=user.getName()%><br/>
年龄：<%=user.getAge()%>
</body>
</html>
