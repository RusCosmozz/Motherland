<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 27.10.2019
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Изменить счет</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div align="center">
    <h2>Изменить</h2>
    <form:form method="post" action="/saveBill" modelAttribute="bill">
        <table >
            <tr>
                <td>ID:</td>
                <td>${bill.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Дата :</td>
                <td><form:input path="date"/></td>
            </tr>
            <tr>
                <td>Клиент:</td>
                <td><form:select path="client.id">
                    <option value="${bill.client.id}">${bill.client.name}</option>
                    <c:forEach items="${clients}" var="client">
                        <option value="${client.id}">${client.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>
            <tr>
                <td>Товар :</td>
                <td><form:select path="product.id">
                    <option value="${bill.product.id}">${bill.product.name}</option>
                    <c:forEach items="${products}" var="product">
                        <option value="${product.id}">${product.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>
            <tr>
                <td>Количество товара :</td>
                <td><form:input path="countOfProduct"/></td>
            </tr>
            <tr>
                <td colspan="3"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form></div>
</body>
</html>