<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Новая накладная</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div align="center">
    <h2>Новая накладная</h2>
    <form:form method="post" action="/saveInvoicePurchase" modelAttribute="invoicePurchase">
        <table >
            <tr>
                <td>Дата :</td>
                <td><form:input path="date"/></td>
            </tr>
            <tr>
                <td>Поставщик :</td>
                <td><form:select path="supplier.id">
                    <option value="-1">Выберите поставщика</option>
                    <c:forEach items="${suppliers}" var="supplier">
                        <option value="${supplier.id}">${supplier.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>>
            <tr>
                <td>Транспортная компания :</td>
                <td><form:select path="transportCompany.id">
                    <option value="-1">Выберите компанию</option>
                    <c:forEach items="${transportCompanies}" var="trans">
                        <option value="${trans.id}">${trans.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>>
            <tr>
                <td>Товар :</td>
                <td><form:select path="product.id">
                    <option value="-1">Выберите товар</option>
                    <c:forEach items="${products}" var="product">
                        <option value="${product.id}">${product.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>
            <tr>
                <td>Количетсво товара :</td>
                <td><form:input path="countOfProduct"/></td>
            </tr>
            <tr>
                <td colspan="5"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
