<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 23.10.2019
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>Счета </title>
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
    <h2>Счета</h2>
    <c:if test="${!empty billList}">
    <table>
        <tr>
            <th>ID</th>
            <th>Дата</th>
            <th>ID Клиента</th>
            <th>ID Товара</th>
            <th>Количество товара</th>
            <th>Сумма счета</th>
            <%--<th>Сумма с НДС</th>--%>
            <th colspan="2">Action</th>

        </tr>
        <c:forEach items="${billList}" var="bill">
            <tr>
                <td>${bill.id}</td>
                <td>${bill.date}</td>
                <td><a href="/client">${bill.client.id}</a> </td>
                <td><a href="/product">${bill.product.id}</a> </td>
                <td  align="center">${bill.countOfProduct}</td>
                <td>${bill.sum}</td>
                <%--<td>${bill.sumNDS}</td>--%>
                <td><a href="/editBill?id=${bill.id}">edit</a></td>
                <td><a href="/deleteBill?id=${bill.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    </c:if>
    <p></p>
    <a href="/addBill">Add new</a>
</div>
</body>
</html>