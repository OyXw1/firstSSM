<%--
  Created by IntelliJ IDEA.
  User: OY
  Date: 10/21/2019
  Time: 12:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>更新页面</title>
</head>
<body>
    <h1>更新页</h1>
    <form action="updateUser" method="post">
        <table>
            <tr>
                <td><label>id:</label></td>
                <td><input type="text" id="id" name="id" value="${user_id}" readonly="readonly"/></td>
            </tr>
            <tr>
                <td><label>name:</label></td>
                <td><input type="text" id="name" name="name"/></td>
            </tr>
            <tr>
                <td><label>password:</label></td>
                <td><input type="password" id="password" name="password" />
            </tr>
            <tr>
                <td><label>sex:</label></td>
                <td><input type="text" id="sex" name="sex" />
            </tr>
            <tr>
                <td><label>age:</label></td>
                <td><input type="text" id="age" name="age" />
            </tr>
            <tr>
                <td><input type="submit" value="update"/></td>
            </tr>
        </table>
    </form>
</body>
</html>
