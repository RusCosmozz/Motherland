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
    <title>Transport Company</title>
</head>
<body>
<h2><a href="/">Home page</a></h2>
<hr>
<div align="center">
    <h2>Transport Companies</h2>
    <c:if test="${!empty transportCompanyList}">
        <table class="data">
            <tr>
                <th>id</th>
                <th>name</th>
                <th>address</th>
                <th>phoneNum</th>

            </tr>
            <c:forEach var="transportCompany" items="${transportCompanyList}">
                <tr>
                    <td>${transportCompany.id}</td>
                    <td>${transportCompany.name}</td>
                    <td>${transportCompany.address}</td>
                    <td>${transportCompany.phoneNum}</td>
                    <td><a href="/editTransportCompany?id=${transportCompany.id}">edit</a></td>
                    <td><a href="/deleteTransportCompany?id=${transportCompany.id}">delete</a></td>
                </tr>
            </c:forEach>
        </table>

    </c:if>
    <a href="/addTransportCompany">Add new</a>
</div>
</body>
</html>
