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
    <title>Invoice Expenditure</title>
</head>
<body>
<h2><a href="/">Home page</a></h2>
<hr>
<div align="center">
    <h2>Invoice Expenditure</h2>
    <c:if test="${!empty invoiceExpenditureList}">
        <table class="data">
            <tr>
                <th>id</th>
                <th>date</th>
                <th>client Id</th>
                <th>product id</th>
                <th>count of product</th>
                <th>bill Id</th>
            </tr>
            <c:forEach var="invoice" items="${invoiceExpenditureList}">
                <tr>
                    <td>${invoice.id}</td>
                    <td>${invoice.date}</td>
                    <td>${invoice.client}</td>
                    <td>${invoice.product}</td>
                    <td>${invoice.countOfProduct}</td>
                    <td>${invoice.bill}</td>
                    <td><a href="/editInvoiceExpenditure?id=${invoice.id}">edit</a></td>
                    <td><a href="/deleteInvoiceExpenditure?id=${invoice.id}">delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <a href="/addInvoiceExpenditure">Add new</a>
</div>
</body>
</html>
