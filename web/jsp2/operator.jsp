<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/3
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP2表达式语言-算数运算符</title>
</head>
<body>
<table border="1" bgcolor="#aaaadd">
    <tr>
        <td>表达式</td>
        <td>计算结果</td>
    </tr>
    <tr>
        <td>\${2}</td>
        <td>${2}</td>
    </tr>
    <tr>
        <td>\${2-3}</td>
        <td>${2-3}</td>
    </tr>
    <tr>
        <td>\${2*3}</td>
        <td>${2*3}</td>
    </tr>
    <tr>
        <td>\${2/3}</td>
        <td>${2/3}</td>
    </tr>
    <tr>
        <td>\${2 div 3}</td>
        <td>${2 div 3}</td>
    </tr>
    <tr>
        <td>\${2-3}</td>
        <td>${2-3}</td>
    </tr>
    <tr>
        <td>\${2/0}</td>
        <td>${2/0}</td>
    </tr>
    <tr>
        <td>\${12%5}</td>
        <td>${12%5}</td>
    </tr>
    <tr>
        <td>\${12 mod 5}</td>
        <td>${12 mod 5}</td>
    </tr>
    <tr>
        <td>\${2>3 ? 4:5}</td>
        <td>${2>3 ? 4:5}</td>
    </tr>
    <tr>
        <td>\${12 != 5}</td>
        <td>${12 != 5}</td>
    </tr>
    <tr>
        <td>\${12 > 5}</td>
        <td>${12 > 5}</td>
    </tr>
</table>
</body>
</html>
