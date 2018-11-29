<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试脚本</title>
</head>
<body>
<%!
    int a = 10;
%>
<%
    for (int i = 0; i < 10; i++) {
%>
<table>
    <tr>
        <td>循环值</td>
        <td><%=i%>
        </td>
    </tr>
</table>
<%
    }
%>
</body>
</html>
