<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
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
    String moneyStr = request.getParameter("money");
    double money = Double.parseDouble(moneyStr);
    if (money < 100) {
        out.println("账户减少：" + money + "元");
    } else {
        List<String> infos = new ArrayList<>();
        infos.add("1111");
        infos.add("2222");
        request.setAttribute("infos", infos);
%>
<jsp:forward page="moneyDetail1.jsp"/>
<%
    }
%>
</body>
</html>
