<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Новый товар</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div align="center">
    <h2>Новый товар</h2>
    <form:form action="/saveProduct" method="post" modelAttribute="product">
        <table>
            <tr>
                <td>Название :</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Поставщик: </td>
                <td>
                    <form:select path="supplier.id">
                        <option value="-1">Выберите поставщика</option>
                        <c:forEach items="${suppliers}" var="supplier">
                            <option value="${supplier.id}">${supplier.name}</option>
                        </c:forEach>
                    </form:select>
                </td>
            </tr>
            <tr>
                <td>Количество товара :</td>
                <td><form:input path="countOnWarehouse"/></td>
            </tr>
            <tr>
                <td>Цена за шт. :</td>
                <td><form:input path="price"/></td>
            </tr>
            <tr>
                <td colspan="4"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
