<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Изменить тр. компанию</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<body>
<div align="center">
    <h2>Изменить транспортную компанию</h2>
    <form:form method="post" action="/saveTransportCompany" modelAttribute="transportCompany">
        <table>
            <tr>
                <td>ID:</td>
                <td>${transportCompany.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Название :</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Адрес :</td>
                <td><form:input path="address"/></td>
            </tr>
            <tr>
                <td>Номер телефона :</td>
                <td><form:input path="phoneNum"/></td>
            </tr>
            <tr>
                <td colspan="3"><input type="submit" value="Сохранить"></td>
            </tr>
        </table>
    </form:form></div>
</body>
</body>
</html>
