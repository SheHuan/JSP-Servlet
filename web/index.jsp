<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/17
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<h1>Hello JavaEE</h1>
<%
    String content = "SheHuan";
%>
<%=content%>

<%!
    int count = 5;

    public void test() {
        for (int i = 0; i < count; i++) {
            System.out.print(i);
        }
    }
%>

<form>
    请输入数字：<input type="number" name="number"/> <input type="submit" value="确定"/>
    <%=application.getRealPath("/")%>
    <%
        try {
            int number = Integer.parseInt(request.getParameter("number"));
    %>
    <h1>输入的数字是<%=number%>
    </h1>
    <table border="1">
        <%
            for (int i = 1; i <= number; i++) {
        %>
        <tr>
            <%
                for (int j = 1; j <= number; j++) {
            %>
            <td>
                <%=i%>*<%=j%>=<%=i * j%>
            </td>
            <%
                }
            %>
        </tr>
        <%
            }
        %>
    </table>
    <%
    } catch (NumberFormatException e) {
    %>
    <h1>请输入一个数字</h1>
    <%
        }
    %>
</form>
</body>
</html>
