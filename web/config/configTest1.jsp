<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>config内置对象</title>
</head>
<body>
name:<%=config.getInitParameter("name")%><br/>
age:<%=config.getInitParameter("age")%>

</body>
</html>
