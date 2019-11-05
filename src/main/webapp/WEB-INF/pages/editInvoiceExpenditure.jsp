<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Invoice Expenditure</title>
</head>
<body>
<div align="center">
    <h2>Edit</h2>
    <form:form method="post" action="/saveInvoiceExpenditure" modelAttribute="invoiceExpenditure">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID:</td>
                <td>${invoiceExpenditure.id}
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
                <td>Product Id :</td>
                <td><form:input path="product"/></td>
            </tr>>
            <tr>
                <td>Count of product:</td>
                <td><form:input path="countOfProduct"/></td>
            </tr>
            <tr>
                <td>Bill Id :</td>
                <td><form:input path="bill"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
