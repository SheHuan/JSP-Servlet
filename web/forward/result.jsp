<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/25
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--用户的请求的地址并没改变，请求参数不会丢失--%>
    <title>forward 转发的结果页</title>
</head>
<body>
年龄：<%=request.getParameter("age")%><br/>
姓名：<%=request.getParameter("username")%>
</body>
</html>
