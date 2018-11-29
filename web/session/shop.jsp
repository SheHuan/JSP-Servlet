<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/24
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择商品</title>
</head>
<body>
<form method="post" action="buyResult.jsp">
    书籍：<input type="checkbox" name="item" value="book"/><br/>
    电脑：<input type="checkbox" name="item" value="computer"/><br/>
    零食：<input type="checkbox" name="item" value="food"/><br/>
    <input type="submit" value="添加到购物车">
</form>
</body>
</html>
