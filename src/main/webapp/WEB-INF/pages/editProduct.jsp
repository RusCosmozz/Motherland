<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 30.10.2019
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<div align="center">
    <h2>Edit</h2>
    <form:form method="post" action="/saveProduct" modelAttribute="product">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID:</td>
                <td>${product.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Name :</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Supplier: </td>
                <td>
                    <form:select path="supplier.id">
                        <option value="-1">Select a supplier</option>
                        <c:forEach items="${suppliers}" var="supplier">
                            <option value="${supplier.id}">${supplier.name}</option>
                        </c:forEach>
                    </form:select>
                </td>

                <%--<td>Supplier Id :</td>
                <td><form:input path="supplier"/></td>--%>
            </tr>
            <tr>
                <td>Count of product:</td>
                <td><form:input path="countOnWarehouse"/></td>
            </tr>
            <tr>
                <td>Price :</td>
                <td><form:input path="price"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form>
</div>

</body>
</html>
