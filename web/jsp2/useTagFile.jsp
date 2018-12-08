<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/5
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Tag File</title>
</head>
<body>
<%
    List<String> a = new ArrayList<>();
    a.add("Hello");
    a.add("World");
    a.add("JSP");
    a.add("Servlet");
    request.setAttribute("a", a);
%>
<mytag:iterator bgColor="#ff0000" cellColor="#00ff00" title="Tag File 测试" bean="a"/>
</body>
</html>
