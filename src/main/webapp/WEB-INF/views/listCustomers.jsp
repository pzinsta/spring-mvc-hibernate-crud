<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customers</title>
<link rel="stylesheet" href='<spring:url value="/resources/css/style.css"/>' type="text/css" />
</head>
<body>

    <h1>Customers</h1>

    <a href='<c:url value="add"/>'>Add Customer</a>

    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>

        <c:forEach items="${customers}" var="customer">

            <spring:url value="update/{id}" var="customerUpdateUrl">
                <spring:param name="id" value="${customer.id}" />
            </spring:url>
            
            <spring:url value="delete/{id}" var="customerDeleteUrl">
                <spring:param name="id" value="${customer.id}" />
            </spring:url>
 
            <tr>
                <td><c:out value="${customer.firstName}"></c:out></td>
                <td><c:out value="${customer.lastName}"></c:out></td>
                <td><c:out value="${customer.email}"></c:out></td>
                <td><a href="${customerUpdateUrl}">Update</a> | <a href="${customerDeleteUrl}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>