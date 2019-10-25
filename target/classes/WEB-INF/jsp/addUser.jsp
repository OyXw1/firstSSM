<%--
  Created by IntelliJ IDEA.
  User: OY
  Date: 10/21/2019
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>新增用户界面</title>
</head>
<body>
    <h1>新增用户</h1>
    <form action="addUser" method="post">
        <table>
            <tr>
                <td><label>name:</label></td>
                <td><input type="text" name="name" id="name"/></td>
            </tr>
            <tr>
                <td><label>password:</label></td>
                <td><input type="password" id="password" name="password"/></td>
            </tr>
            <tr>
                <td><label>sex:</label></td>
                <td><input type="text" name="sex" id="sex"/></td>
            </tr>
            <tr>
                <td><label>age:</label></td>
                <td><input type="text" id="age" name="age"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Add"/></td>
            </tr>
        </table>
    </form>

</body>
</html>
