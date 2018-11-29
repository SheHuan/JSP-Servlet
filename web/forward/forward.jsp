<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/25
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forward 实现页面转发</title>
</head>
<body>
<h1>原始页面</h1>
<jsp:forward page="result.jsp">
    <jsp:param name="age" value="18"/>
</jsp:forward>
</body>
</html>
