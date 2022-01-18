<%--
  Created by IntelliJ IDEA.
  User: MZ
  Date: 2021/8/11
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/"; %>
<html>
    <head>
        <title>首页</title>
        <base href="<%=basePath%>">
    </head>
    <body>
        <div align="center">
            <table>
                <tr>
                    <td><a href="addstudent.jsp">注册学生</a></td>
                </tr>
                <tr>
                    <td><a href="loginstudent.jsp">学生登录</a></td>
                </tr>
                <tr>
                    <td><a href="liststudents.jsp">查询学生列表</a></td>
                </tr>
            </table>

        </div>
    </body>
</html>
