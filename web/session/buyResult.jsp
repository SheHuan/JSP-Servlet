<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的购物车</title>
</head>
<body>
<%
    // 取出session范围内的items属性
    Map<String, Integer> items = (Map<String, Integer>) session.getAttribute("items");
    if (items == null) {
        items = new HashMap<>();
        items.put("书籍", 0);
        items.put("电脑", 0);
        items.put("零食", 0);
    }
    // 获取上一个页面的请求参数
    String[] buys = request.getParameterValues("item");
    for (String item : buys) {
        switch (item) {
            case "book":
                items.put("书籍", items.get("书籍") + 1);
                break;
            case "computer":
                items.put("电脑", items.get("电脑") + 1);
                break;
            case "food":
                items.put("零食", items.get("零食") + 1);
                break;
        }
    }
    // 将items属性设置到session中
    session.setAttribute("items", items);
%>
书籍：<%=items.get("书籍")%>本<br/>
电脑：<%=items.get("电脑")%>台<br/>
零食：<%=items.get("零食")%>袋<br/>
<p>
    <a href="shop.jsp">再次选择商品</a>
</p>
</body>
</html>
