<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 09.11.2019
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Вход</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div >
    <header>
        <div class = "title">
            <div class="left"><a href="/" >Главная страница</a></div>
        </div>
    </header>
</div>
<div class="container">
    <h2>Выберите пользователя</h2>
    <c:if test="${!empty userList}">
    <table border="2" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Имя</th>
            <th>Роль</th>
            <th >Действие</th>

        </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.role}</td>
                <td><a href="/password?id=${user.id}">Войти</a></td>
            </tr>
        </c:forEach>
    </table>
    </c:if>
</body>
</html>
