<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取GET请求参数</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
%>
姓名：<%=name%>
<hr/>
姓名：<%=age%>
<hr/>
</body>
</html>
