<%--
  Created by IntelliJ IDEA.
  User: MZ
  Date: 2021/8/11
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/"; %>
<html>
    <head>
        <title>学生列表</title>
        <base href="<%=basePath%>">
        <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.1.min.js"></script>
        <script>
            $(function (){
                $.ajax({
                    url:"student/selectAll",
                    dataType:"json",
                    method:"POST",
                    success:function (data){
                        $.each(data,function (i,stu){
                            $("#info").append("<tr>")
                                .append("<td>" + stu.id + "</td>")
                                .append("<td>" + stu.name + "</td>")
                                .append("<td>" + stu.age + "</td>")
                                .append("</tr>");
                        })
                    }
                })
            })
        </script>
    </head>
    <body>
        <div align="center">
            <table>
                <thead>
                    <tr>
                        <td>学号</td>
                        <td>姓名</td>
                        <td>年龄</td>
                    </tr>
                </thead>
                <tbody id="info">

                </tbody>

            </table>
        </div>
    </body>
</html>
