<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 09.11.2019
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Товар</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div align="center">
    <h2>Самый дорогой товар</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Название</th>
                <th>ID поставщика</th>
                <th>Количество товара</th>
                <th>Цена за шт.</th>
            </tr>
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.supplier.id} </td>
                    <td>${product.countOnWarehouse}</td>
                    <td>${product.price}</td>
                </tr>
        </table>
    <p></p>
    <a href="/product">Полный список</a>
</div>
</body>
</html>
