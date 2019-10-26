

<%@ page language="java" contentType="text/html;charset=utf8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Bill /></title>
</head>
<body>

<h2></h2>

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
                <td><a href="delete/${client.id}"></a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>