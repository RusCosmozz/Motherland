<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 06.11.2019
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Договоры</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div >
    <header>
        <div class = "title">
            <div class="right"><a href="/" >Выйти</a></div>
            <div class="left"><a href="/directorPages">Главная страница</a></div>
        </div>
    </header>
</div>
<div align="center">
    <h2>Договоры</h2>
    <c:if test="${!empty contractList}">
        <table>
            <tr>
                <th>ID</th>
                <th>Дата</th>
                <th colspan="2">Действия</th>
            </tr>
            <c:forEach items="${contractList}" var="contract">
                <tr>
                    <td>${contract.id}</td>
                    <td>${contract.date}</td>
                    <td><a href="/editContract?id=${contract.id}">Изменить</a></td>
                    <td><a href="/deleteContract?id=${contract.id}">Удалить</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <p></p>
    <a href="/addContract">Новый договор</a>
</div>
</body>
</html>
