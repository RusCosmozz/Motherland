<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>New Customer</title>
</head>
<body>
<div align="center">
    <h2>New bill</h2>
    <form:form method="post" action="/saveBill" modelAttribute="bill">
        <table border="0" cellpadding="5">
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
    </form:form>
</div>
</body>
</html>