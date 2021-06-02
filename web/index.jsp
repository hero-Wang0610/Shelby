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
    <script src="js/jquery-3.4.1.js"></script>
    <script>
      $(function () {
          $("#djBtn").click(function () {

              $.ajax({
                url : "myServlet01.do",//访问后台的servlet地址
                // data : "key1=value1&key2=value2",//为后台传输的参数
                type : "get",//请求方式：get/post
                dataType : "text",//从后台接受的数据的格式  text：接受普通文本文件  json：接受json格式的文本
                async : true,//
                success : function (data) {//回调函数（该函数的执行时机是后台执行完毕之后，该函数才会执行）
                  //data是从后台相应过来的数据
                  $("#msg").html(data);
                }

              })
          })
      })
    </script>
  </head>
  <body>

  <button id="djBtn">点击</button>
  <br />
  <br />
  <div id="msg" style="width: 200px;height: 200px;background-color: pink">


  </div>

  <br />
  <br />
  <div id="msg2" style="width: 200px;height: 200px;background-color: pink">

    heljsdljfal
  </div>

  </body>
</html>
