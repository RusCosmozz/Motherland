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
    <title>Invoice Purchase</title>
</head>
<body>
<h2><a href="/">Home page</a></h2>
<hr>
<div align="center">
    <h2>Invoice Purchase</h2>
    <c:if test="${!empty invoicePurchaseList}">
        <table class="data">
            <tr>
                <th>id</th>
                <th>date</th>
                <th>supplier Id</th>
                <th>transport company id</th>
                <th>product id</th>
                <th>count of product</th>
            </tr>
            <c:forEach var="invoice" items="${invoicePurchaseList}">
                <tr>
                    <td>${invoice.id}</td>
                    <td>${invoice.date}</td>
                    <td>${invoice.supplier}</td>
                    <td>${invoice.transportCompany}</td>
                    <td>${invoice.product}</td>
                    <td>${invoice.countOfProduct}</td>
                    <td><a href="/editInvoicePurchase?id=${invoice.id}">edit</a></td>
                    <td><a href="/deleteInvoicePurchase?id=${invoice.id}">delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <a href="/addInvoicePurchase">Add new</a>
</div>
</body>
</html>
