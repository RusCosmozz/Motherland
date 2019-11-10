<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 09.11.2019
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Директор</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div>
    <header>
        <div class="title">
            <div class="right"><a href="/">Выйти</a></div>
            <div class="left"><a href="/directorPages">Главная страница</a></div>
        </div>
    </header>
</div>
<div class="sales1">
    <img src="/res/bill.png">
    <br>
    <p>Просмотреть страницу <a href="/bill">счетов</a></p>
</div>
<div class="sales2">
    <img src="/res/contract.png">
    <br>
    <p>Просмотреть страницу <a href="/contract">договоров</a></p>
</div>
</body>
</html>
