<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a movie</title>
</head>
<body>
	<h1>Add a movie!</h1>
	<form:form action="/movie/new" method="post" modelAttribute="movie">
		<form:input type="hidden" path="user" value="${user_id}" />
        <p>
            <form:label path="m_name">Movie name:</form:label>
            <form:errors path="m_name"/>
            <form:input path="m_name"/>
        </p>
        <p>
            <form:label path="description">Description:</form:label>
            <form:errors path="description"/>
            <form:input path="description"/>
        </p>
        <p>
            <form:label path="image">Image:</form:label>
            <form:errors path="image"/>
            <form:input path="image"/>
        </p>
        <input type="submit" value="Submit"/>
	</form:form> 
	<p><a href="/home">Cancel</a></p>
</body>
</html>