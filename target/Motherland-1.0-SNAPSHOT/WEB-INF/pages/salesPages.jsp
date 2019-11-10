<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 09.11.2019
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Отдел продаж</title>
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

<div class="sales1">
    <img src="/res/client.png">
    <br>
    <p>Просмотреть страницу <a href="/client">клиентов</a></p>
</div>
<div class="sales2">
    <img src="/res/gruz.png">
    <br>
    <p>Просмотреть страницу <a href="/supplier">поставщиков </a></p>
</div>
</body>
</html>
