<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>账户详情</title>
</head>
<body>
<%
    String money = request.getParameter("money");
    out.println("账户减少：" + money + "元"+"<br/>");
    List<String> infos = (List<String>) request.getAttribute("infos");
    for (String info : infos) {
        out.println(info + "<br/>");
    }
%>
</body>
</html>
