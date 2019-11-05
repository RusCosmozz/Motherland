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
    <title>Suppliers</title>
</head>
<body>
<h2><a href="/">Home page</a> </h2>
<hr>

<div align="center">
    <h2>Clients</h2>
    <c:if test="${!empty supplierList}">
        <table class="data">
            <tr>
                <th>id</th>
                <th>name</th>
                <th>address</th>
                <th>phoneNum</th>

            </tr>
            <c:forEach var="supplier" items="${supplierList}">
                <tr>
                    <td>${supplier.id}</td>
                    <td>${supplier.name}</td>
                    <td>${supplier.address}</td>
                    <td>${supplier.phoneNum}</td>
                    <td><a href="/editSupplier?id=${supplier.id}">edit</a></td>
                    <td><a href="/deleteSupplier?id=${supplier.id}">delete</a></td>
                </tr>
            </c:forEach>
        </table>

    </c:if>
    <a href="/addSupplier">Add new</a>
</div>
</body>
</html>
