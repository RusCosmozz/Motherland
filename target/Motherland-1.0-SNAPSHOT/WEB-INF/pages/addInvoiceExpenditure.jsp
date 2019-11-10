<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 20:03
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
    <form:form method="post" action="/saveInvoiceExpenditure" modelAttribute="invoiceExpenditure">
        <table >
            <tr>
                <td>Дата :</td>
                <td><form:input path="date"/></td>
            </tr>
            <tr>
                <td>ID Счета:</td>
                <td><form:select path="bill.id">
                    <option value="-1">Выберите счет</option>
                    <c:forEach items="${bills}" var="bill">
                        <option value="${bill.id}">${bill.id}</option>
                    </c:forEach>
                </form:select></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form>
</div>

</body>
</html>
