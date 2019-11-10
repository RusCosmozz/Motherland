<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 09.11.2019
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Отдел распр.</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div >
    <header>
        <div class = "title">
            <div class="right"><a href="/" >Выйти</a></div>
            <div class="left"><a href="/distributionPages">Главная страница</a></div>
        </div>
    </header>
</div>

<div class="layer1">
    <img src="/res/gruz.png">
    <br>
    <p>Просмотреть страницу <a href="/transportCompany">транспортных компаний</a> </p>
    <hr>
    <img src="/res/doc.png">
    <br>
    <p>Просмотреть страницу <a href="/invoiceExpenditure">расходных накладных</a></p>
</div>

<div class="layer2">
    <img src="/res/prod.png">
    <br>
    <p>Просмотртеть страницу <a href="/product">товаров</a></p>
    <hr>
    <img src="/res/doc.png">
    <br>
    <p>Просмотреть страницу <a href="/invoicePurchase">приходных накладных</a></p>
</div>

</body>
</html>
