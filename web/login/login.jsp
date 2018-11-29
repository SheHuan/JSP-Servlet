<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/25
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<span style="color: red;font-weight: bold">
    <%
        if (request.getAttribute("error") != null) {
            out.println(request.getAttribute("error") + "<br/>");
        }
    %>
</span>
请输入用户名、密码：
<form method="post" action="<%=request.getContextPath()%>/result">
    用户名：<input type="text" name="username"/><br/>
    密&nbsp;&nbsp;码：<input type="password" name="password"/><br/>
    <input type="reset" value="重置"/><input type="submit" value="登录"/>
</form>
</body>
</html>
