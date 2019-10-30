

<%@ page language="java" contentType="text/html;charset=utf8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Clients</title>
</head>
<body>

<h2><a href="/">Home page</a> </h2>
<hr>

<div align="center">
    <h2>Clients</h2>
    <c:if test="${!empty clientList}">
    <table class="data">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>address</th>
            <th>phoneNum</th>

        </tr>
        <c:forEach var="client" items="${clientList}">
            <tr>
                <td>${client.id}</td>
                <td>${client.name}</td>
                <td>${client.address}</td>
                <td>${client.phoneNum}</td>
                <td><a href="/editClient?id=${client.id}">edit</a></td>
                <td><a href="/deleteClient?id=${client.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
        <a href="/addClient">Add new</a>
</c:if>
</div>

</body>
</html>