<%--
  Created by IntelliJ IDEA.
  User: Mi
  Date: 23.10.2019
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>Bill /></title>
</head>
<body>

<h2></h2>

<c:if test="${!empty billList}">
    <table class="data">
        <tr>
            <th>id</th>
            <th>date</th>
            <th>client id</th>
            <th>prod id</th>
            <th>count of prod</th>
            <th>sum</th>
            <th>sumNds</th>
        </tr>
        <c:forEach items="${billList}" var="bill">
            <tr>
                <td>${bill.id}</td>
                <td>${bill.date}</td>
                <td>${bill.client}</td>
                <td>${bill.product}</td>
                <td>${bill.countOfProd}</td>
                <td>${bill.sum}</td>
                <td>${bill.sumNds}</td>
                <td><a href="delete/${bill.id}"></a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>