<%@tag pageEncoding="utf-8" import="java.util.List" %>
<%--定义属性--%>
<%@ attribute name="bgColor" %>
<%@ attribute name="cellColor" %>
<%@ attribute name="title" %>
<%@attribute name="bean" %>
<table border="1" bgcolor="${bgColor}">
    <tr>
        <td><b>${title}</b></td>
    </tr>
    <%
        List<String> list = (List<String>) request.getAttribute("a");
        for (String i : list) {
    %>
    <tr>
        <td bgcolor="${cellColor}"><%=i%>
        </td>
    </tr>
    <%
        }
    %>
</table>