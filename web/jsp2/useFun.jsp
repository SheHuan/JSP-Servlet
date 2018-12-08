<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/5
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://shehuan.com/mytablib" prefix="mytag" %>
<html>
<head>
    <title>表达式语言-自定义函数</title>
</head>
<body>
<form action="useFun.jsp" method="post">
    输入一个字符串：<input type="text" name="name" value="${param['name']}">
    <input type="submit" value="提交"/>
</form>

<table border="1" bgcolor="#ffe4c4">
    <tr>
        <td>表达式</td>
        <td>计算结果</td>
    </tr>
    <tr>
        <td>\${param["name"]}}</td>
        <td>${param["name"]}</td>
    </tr>
    <tr>
        <td>\${mytag:charCount(param["name"])}</td>
        <td>${mytag:charCount(param["name"])}</td>
    </tr>
    <tr>
        <td>\${mytag:reverse(param["name"])}</td>
        <td>${mytag:reverse(param["name"])}</td>
    </tr>

</table>
</body>
</html>
