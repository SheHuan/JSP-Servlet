<%@ page import="com.servlet.demo.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/25
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java Bean 测试</title>
</head>
<body>
<h1>使用 JSP的useBean、setProperty、getProperty</h1>
<%--创建User实例，名为u--%>
<jsp:useBean id="u" class="com.servlet.demo.User" scope="page"/>
<jsp:setProperty name="u" property="name" value="tom"/>
<jsp:setProperty name="u" property="age" value="10"/>
姓名：
<jsp:getProperty name="u" property="name"/>
<br/>
年龄：
<jsp:getProperty name="u" property="age"/>
<hr/>
<h1></h1>
<%
    User user = new User();
    user.setName("Cat");
    user.setAge(11);

    request.setAttribute("user", user);
%>
<jsp:forward page="result.jsp"/>
</body>
</html>
