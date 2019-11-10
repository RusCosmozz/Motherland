<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Новый поставщик</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div align="center">
<h2>Новый поставщик</h2>
<form:form action="/saveSupplier" method="post" modelAttribute="supplier">
    <table>
        <tr>
            <td>Название: </td>
            <td><form:input path="name" /></td>
        </tr>
        <tr>
            <td>Адрес : </td>
            <td><form:input path="address" /></td>
        </tr>
        <tr>
            <td>Номер телефона: </td>
            <td><form:input path="phoneNum" /></td>
        </tr>
        <tr>
            <td>ID Договора:</td>
            <td><form:select path="contract.id">
                <option value="-1">Выберите договор</option>
                <c:forEach items="${contracts}" var="contract">
                    <option value="${contract.id}">${contract.id}</option>
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
