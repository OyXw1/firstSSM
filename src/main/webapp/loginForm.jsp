<%--
  Created by IntelliJ IDEA.
  User: OY
  Date: 10/21/2019
  Time: 12:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="text/html;charset=UTF-8" http-equiv="Content-Type" >
    <title>登录页面</title>
</head>
<body>
    <h1>请登录：</h1>
    <form action="login" method="post">
        <font color="red" >${sessionScope.message}</font>
        <table>
            <tr>
                <td><label>name:</label></td>
                <td><input type="text" id="name" name="name"/></td>
            </tr>
            <tr>
                <td><label>password:</label></td>
                <td><input type="password" id="password" name="password"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="login"/></td>
            </tr>
        </table>
    </form>


</body>
</html>
