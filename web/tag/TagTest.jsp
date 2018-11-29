<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/26
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shehuan.com/mytablib" prefix="mytag" %>
<html>
<head>
    <title>自定义标签</title>
</head>
<body>
<mytag:helloWorld/>
<hr/>
<mytag:userTag name="Jack" age="10"/>
<hr/>

<%
    List<String> list = new ArrayList<>();
    list.add("Java");
    list.add("Kotlin");
    list.add("Python");
    pageContext.setAttribute("list", list);
%>
<table border="1" bgcolor="#aaaadd" , width="300">
    <mytag:iterator collection="list" item="item">
        <tr>
            <td>${pageScope.item}</td>
        </tr>
    </mytag:iterator>
</table>
<hr/>

<mytag:fragment>
    <jsp:attribute name="fragment">
        <mytag:helloWorld/>
    </jsp:attribute>
</mytag:fragment>

<mytag:fragment>
    <jsp:attribute name="fragment">
        ${pageContext.request.remoteAddr}
    </jsp:attribute>
</mytag:fragment>

<hr/>
<mytag:dynamicAttr name="shehuan" age="18"/>
<mytag:dynamicAttr 书名="JSP/Servlet" 价格="100" 出版社="电子工业出版社" 作者="xxx"/>
</body>
</html>
