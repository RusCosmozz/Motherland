<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Поставщики</title>
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


<div align="center">
    <h2>Клиенты</h2>
    <c:if test="${!empty supplierList}">
        <table>
            <tr>
                <th>ID</th>
                <th>Название</th>
                <th>Адрес</th>
                <th>Номер телефона</th>
                <th>ID договора</th>
                <th colspan="2">Действия</th>

            </tr>
            <c:forEach var="supplier" items="${supplierList}">
                <tr>
                    <td>${supplier.id}</td>
                    <td>${supplier.name}</td>
                    <td>${supplier.address}</td>
                    <td>${supplier.phoneNum}</td>
                    <td><a href="">${supplier.contract.id}</a></td>
                    <td><a href="/editSupplier?id=${supplier.id}">Изменить</a></td>
                    <td><a href="/deleteSupplier?id=${supplier.id}">Удалить</a></td>
                </tr>
            </c:forEach>
        </table>

    </c:if>
    <a href="/addSupplier">Новый поставщик</a>
</div>
</body>
</html>
