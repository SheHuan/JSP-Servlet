<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext 测试</title>
</head>
<body>
<%
    pageContext.setAttribute("name", "shehuan");
    pageContext.setAttribute("age", "18", PageContext.REQUEST_SCOPE);
    pageContext.setAttribute("sex", "male", PageContext.SESSION_SCOPE);
    pageContext.setAttribute("birthday", "0000", PageContext.APPLICATION_SCOPE);
%>
<%=pageContext.getAttribute("name")%>,<%=pageContext.getAttributesScope("name")%><br/>
<%=pageContext.getAttribute("age", PageContext.REQUEST_SCOPE)%>,<%=pageContext.getAttributesScope("age")%><br/>
<%=pageContext.getAttribute("sex", PageContext.SESSION_SCOPE)%>,<%=pageContext.getAttributesScope("sex")%><br/>
<%=pageContext.getAttribute("birthday", PageContext.APPLICATION_SCOPE)%>,<%=pageContext.getAttributesScope("birthday")%>
</body>
</html>
