<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customers</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" />
</head>
<body>

    <h1>Customers</h1>

    <a href='<c:url value="add"></c:url>'>Add Customer</a>

    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
        </tr>

        <c:forEach items="${customers}" var="customer">
            <tr>
                <td><c:out value="${customer.firstName}"></c:out></td>
                <td><c:out value="${customer.lastName}"></c:out></td>
                <td><c:out value="${customer.email}"></c:out></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>