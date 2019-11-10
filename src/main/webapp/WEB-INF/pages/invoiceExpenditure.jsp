<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Расходные накладные</title>
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
    <h2>Расходные накладные</h2>
    <c:if test="${!empty invoiceExpenditureList}">
        <table>
            <tr>
                <th>Id</th>
                <th>Дата</th>
                <th>Id Клиента</th>
                <th>Id Товара</th>
                <th>Количество товара</th>
                <th>Id Счета</th>
                <th colspan="2">Действия</th>
            </tr>
            <c:forEach var="invoice" items="${invoiceExpenditureList}">
                <tr>
                    <td>${invoice.id}</td>
                    <td>${invoice.date}</td>
                    <td><a href="/client">${invoice.bill.client.id}</a> </td>
                    <td><a href="/product">${invoice.bill.product.id}</a> </td>
                    <td  align="center">${invoice.bill.countOfProduct}</td>
                    <td><a href="/bill">${invoice.bill.id}</a></td>
                    <td><a href="/editInvoiceExpenditure?id=${invoice.id}">Изменить</a></td>
                    <td><a href="/deleteInvoiceExpenditure?id=${invoice.id}">Удалить</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <p></p>
    <a href="/addInvoiceExpenditure">Новая накладная</a>
</div>
</body>
</html>
