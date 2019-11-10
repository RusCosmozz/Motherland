<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Изменить расходную накл.</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div align="center">
    <h2>Изменить расходную накладную</h2>
    <form:form method="post" action="/saveInvoiceExpenditure" modelAttribute="invoiceExpenditure">
        <table>
            <tr>
                <td>ID:</td>
                <td>${invoiceExpenditure.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Дата :</td>
                <td><form:input path="date"/></td>
            </tr>
            <tr>
                <td>Клиент :</td>
                <td><form:select path="client.id">
                    <option value="${invoiceExpenditure.client.id}">${invoiceExpenditure.client.name}</option>
                    <c:forEach items="${clients}" var="client">
                        <option value="${client.id}">${client.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>
            <tr>
                <td>Товар :</td>
                <td><form:select path="product.id">
                    <option value="${invoiceExpenditure.product.id}">${invoiceExpenditure.product.name}</option>
                    <c:forEach items="${products}" var="product">
                        <option value="${product.id}">${product.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>>
            <tr>
                <td>Количество продукта :</td>
                <td><form:input path="countOfProduct"/></td>
            </tr>
            <tr>
                <td>ID Счета:</td>
                <td><form:select path="bill.id">
                    <option value="${invoiceExpenditure.bill.id}">${invoiceExpenditure.bill.id}</option>
                    <c:forEach items="${bills}" var="bill">
                        <option value="${bill.id}">${bill.id}</option>
                    </c:forEach>
                </form:select></td>
            </tr>
            <tr>
                <td colspan="5"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
