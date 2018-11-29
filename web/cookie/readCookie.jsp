<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>读取Cookie</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for (Cookie c : cookies) {
%>
<%=c.getName()%>=<%=c.getValue()%><br/>
<%
    }
%>
</body>
</html>
