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
    <title>Edit</title>
</head>
<body>
<div align="center">
    <h2>Edit</h2>
    <form:form method="post" action="/saveBill" modelAttribute="bill">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID:</td>
                <td>${bill.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Date :</td>
                <td><form:input path="date"/></td>
            </tr>
            <tr>
                <td>Client Id :</td>
                <td><form:input path="client"/></td>
            </tr>
            <tr>
                <td>Product id :</td>
                <td><form:input path="product"/></td>
            </tr>
            <tr>
                <td>Count of product :</td>
                <td><form:input path="countOfProduct"/></td>
            </tr>
            <tr>
                <td>Sum :</td>
                <td><form:input path="sum"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form></div>
</body>
</html>