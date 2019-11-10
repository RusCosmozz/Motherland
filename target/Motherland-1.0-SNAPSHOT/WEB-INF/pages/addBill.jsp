<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <title>Новый счет</title>
</head>
<body>
<div align="center">
    <h2>Новый счет</h2>
    <form:form method="post" action="/saveBill" modelAttribute="bill">
        <table>
            <tr>
                <td>Дата :</td>
                <td><form:input path="date"/></td>
            </tr>
            <tr>
                <td>Клиент :</td>
                <td><form:select path="client.id">
                    <option value="-1">Выберите клиента :</option>
                    <c:forEach items="${clients}" var="client">
                        <option value="${client.id}">${client.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>
            <tr>
                <td>Товар :</td>
                <td><form:select path="product.id">
                    <option value="-1">Выберите товар :</option>
                    <c:forEach items="${products}" var="product">
                        <option value="${product.id}">${product.name}</option>
                    </c:forEach>
                </form:select></td>
            </tr>
            <tr>
                <td>Количество товара :</td>
                <td><form:input path="countOfProduct"/></td>
            </tr>
            <tr>
                <td colspan="4"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>