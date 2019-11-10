<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Товары</title>
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

<div align="center">
    <h2>Товары</h2>
    <a href="/maxPrice">Найти самый дорогой товар</a>
    <a href="/minPrice">Найти самый дешевый товар</a>
    <c:if test="${!empty productList}">
        <table >
            <tr>
                <th>ID</th>
                <th>Название</th>
                <th>ID поставщика</th>
                <th>Количество товара</th>
                <th>Цена за шт.</th>
                <th colspan="2">Действия</th>

            </tr>
            <c:forEach items="${productList}" var="product">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td><a href="/product">${product.supplier.id}</a> </td>
                    <td>${product.countOnWarehouse}</td>
                    <td>${product.price}</td>
                    <td><a href="/editProduct?id=${product.id}">Изменить</a></td>
                    <td><a href="/deleteProduct?id=${product.id}">Удалить</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <a href="/addProduct">Новый товар</a>
</div>

</body>
</html>
