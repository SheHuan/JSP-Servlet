<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/1
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线用户信息</title>
</head>
<body>
<table width="400" border="1">
    <%
        Map<String, String> online = (Map<String, String>) application.getAttribute("online");
        for (String sessionId : online.keySet()) {%>
    <tr>
        <td><%=sessionId%>
        </td>
        <td><%=online.get(sessionId)%>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
