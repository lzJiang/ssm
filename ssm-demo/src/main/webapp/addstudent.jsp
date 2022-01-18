<%--
  Created by IntelliJ IDEA.
  User: MZ
  Date: 2021/8/11
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/"; %>
<html>
    <head>
        <title>学生注册</title>
        <base href="<%=basePath%>">
    </head>
    <body>
        <div align="center">
            <h3>学生注册</h3>
            <form action="student/add">
                <input type="text" name="name">
                <br>
                <input type="text" name="age">
                <br>
                <input type="submit" value="注册">
            </form>
        </div>
    </body>
</html>
