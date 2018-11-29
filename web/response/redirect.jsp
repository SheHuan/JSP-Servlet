<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>重定向</title>
</head>
<body>
<%
    response.sendRedirect(request.getContextPath() + "/index.jsp");
%>
</body>
</html>
