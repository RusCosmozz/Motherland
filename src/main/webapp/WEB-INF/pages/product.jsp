<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h2><a href="/">Home page</a></h2>
<hr>
<div align="center">
    <h2>Product</h2>
    <c:if test="${!empty productList}">
        <table class="data">
            <tr>
                <th>id</th>
                <th>name</th>
                <th>supplier id</th>
                <th>count of prod</th>
                <th>price</th>
            </tr>
            <c:forEach items="${productList}" var="product">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.supplier}</td>
                    <td>${product.countOnWarehouse}</td>
                    <td>${product.price}</td>
                    <td><a href="/editProduct?id=${product.id}">edit</a></td>
                    <td><a href="/deleteProduct?id=${product.id}">delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <a href="/addProduct">Add new</a>
</div>

</body>
</html>
