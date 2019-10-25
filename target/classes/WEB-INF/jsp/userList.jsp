<%--
  Created by IntelliJ IDEA.
  User: OY
  Date: 10/21/2019
  Time: 12:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>ssm</title>
    <style type="text/css">
        td{
            text-align: center;
            width: 100px;
        }
    </style>
</head>
<body>
    <div align="right">
        welcome,[<font color="#ff1493">${sessionScope.user.name}</font>]<a href="logout">Eixt</a>
    </div>
    <br>
    <center>
        <table border="1">
            <tbody>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>password</th>
                <th>sex</th>
                <th>age</th>
                <th colspan="2" style="">Options</th>
            </tr>
            <c:if test="${!empty userList}">
                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.password}</td>
                        <td>${user.sex}</td>
                        <td>${user.age}</td>
                        <td><a href="toUpdateUser?id=${user.id}">modify</a></td>
                        <td><a href="deleteUser?id=${user.id}">delete</a></td>
                    </tr>
                </c:forEach>
            </c:if>
            </tbody>
        </table>
        <br>
        <a href="toAddUser">add a new user</a>
    </center>
</body>
</html>
