<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Транспортные компании</title>
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
    <h2>Транспортные компании</h2>
    <c:if test="${!empty transportCompanyList}">
        <table>
            <tr>
                <th>ID</th>
                <th>Название</th>
                <th>Адрес</th>
                <th>Номер телефона</th>
                <th colspan="2">Action</th>
            </tr>
            <c:forEach var="transportCompany" items="${transportCompanyList}">
                <tr>
                    <td>${transportCompany.id}</td>
                    <td>${transportCompany.name}</td>
                    <td>${transportCompany.address}</td>
                    <td>${transportCompany.phoneNum}</td>
                    <td><a href="/editTransportCompany?id=${transportCompany.id}">Изменить</a></td>
                    <td><a href="/deleteTransportCompany?id=${transportCompany.id}">Удалить</a></td>
                </tr>
            </c:forEach>
        </table>

    </c:if>
    <a href="/addTransportCompany">Новая тр. компания</a>
</div>
</body>
</html>
