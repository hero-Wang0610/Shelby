<%--
  Created by IntelliJ IDEA.
  User: 王遐斌
  Date: 2021/6/2
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 	request.getServerPort() + request.getContextPath() + "/";
%>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>$Title$</title>

  </head>
  <body>
      <h3>学生信息管理系统</h3>
      <a href="student/save.do">增加操作</a>
      <a href="student/update.do">更新操作</a>
      <a href="student/delete.do">删除操作</a>
      <a href="student/select.do">查询操作</a>
  </body>
</html>
