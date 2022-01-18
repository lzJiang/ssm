<%--
  Created by IntelliJ IDEA.
  User: MZ
  Date: 2021/8/11
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/"; %>
<html>
    <head>
        <title>学生登录</title>
        <base href="<%=basePath%>">
    </head>
    <body>
        <div align="center">
            <form action="student/selectone">
                <input type="text" name="name">
                <br>
                <input type="submit" value="登录">
            </form>
        </div>
    </body>
</html>
