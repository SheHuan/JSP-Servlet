<%@ page import="java.util.Map" %>
<%@ page import="com.servlet.demo.OnlineUser" %><%--
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
<table width="800" border="1">
    <%
        Map<String, OnlineUser> onlineUser = (Map<String, OnlineUser>) application.getAttribute("onlineUser");
        for (String sessionId : onlineUser.keySet()) {
            OnlineUser user = onlineUser.get(sessionId);
    %>
    <tr>
        <td><%=user.getSessionId()%>
        </td>
        <td><%=user.getUsername()%>
        </td>
        <td><%=user.getIp()%>
        </td>
        <td><%=user.getPage()%>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
