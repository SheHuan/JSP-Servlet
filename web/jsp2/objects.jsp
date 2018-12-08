<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/3
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP2表达式语言-内置对象</title>
</head>
<body>
输入姓名：
<form action="objects.jsp" method="post">
    <input type="text" name="name" value="${param['name']}"/>
    <input type="submit" value="提交"/>
</form>
<%
    session.setAttribute("user", "aaa");
    Cookie cookie = new Cookie("name", "bbb");
    cookie.setMaxAge(60*3);
    response.addCookie(cookie);
%>
<table border="1" width="660" bgcolor="#7fffd4">
    <tr>
        <td><b>功能</b></td>
        <td><b>表达式</b></td>
        <td><b>计算结果</b></td>
    </tr>
    <tr>
        <td>获得请求参数的值</td>
        <td>\${param.name}}</td>
        <td>${param.name}</td>
    </tr>
    <tr>
        <td>获得请求参数的值</td>
        <td>\${param["name"]}</td>
        <td>${param["name"]}</td>
    </tr>
    <tr>
        <td>获取host的值</td>
        <td>\${header.host}</td>
        <td>${header.host}</td>
    </tr>
    <tr>
        <td>获取accept的值</td>
        <td>\${header.accept}</td>
        <td>${header.accept}</td>
    </tr>
    <tr>
        <td>获取session的值</td>
        <td>\${sessionScope["user"]}</td>
        <td>${sessionScope["user"]}</td>
    </tr>
    <tr>
        <td>获取Cookie的值</td>
        <td>\${cookie["name"].value}</td>
        <td>${cookie["name"].value}</td>
    </tr>
</table>
</body>
</html>
