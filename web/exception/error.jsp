<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>错误页面</title>
</head>
<body>
异常类型：<%=exception.getClass()%><br/>
异常信息：<%=exception.getMessage()%>
</body>
</html>
