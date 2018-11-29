<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加Cookie</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("username", "shehuan");
    cookie.setMaxAge(60 * 2);//120s
    response.addCookie(cookie);
%>
</body>
</html>
