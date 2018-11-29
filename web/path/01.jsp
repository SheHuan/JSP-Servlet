<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/22
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>路径问题</title>
</head>
<body>
<%--<%--%>
<%--response.sendRedirect("index.jsp");--%>
<%--%>--%>
<%--<jsp:forward page="index.jsp"/>--%>

<a href="../request/info.jsp">访问其它页面（相对路径）</a><br/>
<a href="<%=request.getContextPath()%>/request/info.jsp">访问其它页面（绝对路径）</a>
</body>
</html>
