<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Приходные накладные</title>
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
    <h2>Приходные накладные</h2>
    <c:if test="${!empty invoicePurchaseList}">
        <table>
            <tr>
                <th>ID</th>
                <th>Дата</th>
                <th>ID Поставщика</th>
                <th>ID Транспортной комп.</th>
                <th>ID Товара </th>
                <th>Количество товара</th>
                <th colspan="2">Дейтсвие</th>

            </tr>
            <c:forEach var="invoice" items="${invoicePurchaseList}">
                <tr>
                    <td>${invoice.id}</td>
                    <td>${invoice.date}</td>
                    <td>${invoice.supplier.id} </td>
                    <td>${invoice.transportCompany.id} </td>
                    <td><a href="/product"> ${invoice.product.id}</a></td>
                    <td  align="center">${invoice.countOfProduct}</td>
                    <td><a href="/editInvoicePurchase?id=${invoice.id}">Изменить</a></td>
                    <td><a href="/deleteInvoicePurchase?id=${invoice.id}">Удалить</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <p></p>
    <a href="/addInvoicePurchase">Новая накладная</a>
</div>
</body>
</html>
