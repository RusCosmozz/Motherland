<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>Edit Transport Company</title>
</head>
<body>
<body>
<div align="center">
    <h2>Edit</h2>
    <form:form method="post" action="/saveTransportCompany" modelAttribute="transportCompany">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID:</td>
                <td>${transportCompany.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Name :</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Address :</td>
                <td><form:input path="address"/></td>
            </tr>
            <tr>
                <td>Phone Number :</td>
                <td><form:input path="phoneNum"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form></div>
</body>
</body>
</html>