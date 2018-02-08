<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Customer</title>
</head>
<body>
    <h1>Add Customer</h1>
    <form:form action="add" method="POST" modelAttribute="customer">
        <div>
            <form:label path="firstName">First Name</form:label>
            <form:input path="firstName" />
        </div>
        <div>
            <form:label path="lastName">Last Name</form:label>
            <form:input path="lastName" />
        </div>
        <div>
            <form:label path="email">Email</form:label>
            <form:input path="email" />
        </div>
        
        <input type="submit" value="Add"/>
        <a href="<c:url value="/customer/list"/>">Back to list</a>
    </form:form>
</body>
</html>