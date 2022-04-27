<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New user registration</title>
</head>
<body>
	<h1>Registration</h1>
	<form:form action="/register" method="post" modelAttribute="user">
		<p>
			<form:label path="first_name">Name:</form:label>
			<form:errors path="first_name"/>
			<form:input path="first_name"/>
		</p>
		<p>
			<form:label path="email">Email:</form:label>
			<form:errors path="email"/>
			<form:input path="email"/>
		</p>
		<p>
			<form:label path="password">Password:</form:label>
			<form:errors path="password"/>
			<form:input type="password" path="password"/>
		</p>
		<p>
			<form:label path="confirm">Confirm password:</form:label>
			<form:errors path="confirm"/>
			<form:input type="password" path="confirm"/>
		</p>
		<input type="submit" value="Submit"/>
	</form:form> 
</body>
</html>