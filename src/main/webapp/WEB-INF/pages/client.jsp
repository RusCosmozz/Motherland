

<%@ page language="java" contentType="text/html;charset=utf8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Клиенты</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>

<div >
    <header>
        <div class = "title">
            <div class="right"><a href="/" >Выйти</a></div>
            <div class="left"><a href="/salesPages">Главная страница</a></div>
        </div>
    </header>
</div>

<div align="center">
    <h2>Клиенты</h2>
    <c:if test="${!empty clientList}">
    <table>
        <tr>
            <th>ID</th>
            <th>Название</th>
            <th>Адрес</th>
            <th>Номер телефона</th>
            <th>ID договора</th>
            <th colspan="2">Действия</th>
        </tr>
        <c:forEach var="client" items="${clientList}">
            <tr>
                <td>${client.id}</td>
                <td>${client.name}</td>
                <td>${client.address}</td>
                <td>${client.phoneNum}</td>
                <td>${client.contract.id} </td>
                <td><a href="/editClient?id=${client.id}">Изменить</a></td>
                <td><a href="/deleteClient?id=${client.id}">Удалить</a></td>
            </tr>
        </c:forEach>
    </table>
        <p></p>
        <a href="/addClient">Новый клиент</a>
</c:if>
</div>

</body>
</html>