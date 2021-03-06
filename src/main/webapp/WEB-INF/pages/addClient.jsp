<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Новый клиент</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<div align="center">
    <h2>Новый клиент</h2>
    <form:form action="/saveClient" method="post" modelAttribute="client">
        <table>
            <tr>
                <td>Название : </td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Адрес: </td>
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
                <td colspan="4"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>