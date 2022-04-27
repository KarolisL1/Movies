<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Create a movie</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/main.js"></script>
</head>
<body>
    <div class="grid bg_blue">
		<div class="container grid col3 align_center justify_center">
			<h1 class="col_white1">Movies</h1>
			<div class="flex col2 gap2">
				<a class="col_white1" href="/movies/new">Add a movie</a>
				<a class="col_white1" href="/movies">Watched</a>
				<a class="col_white1" href="/logout">Logout</a>
			</div>
		</div>
	</div>
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
	<p><a href="/">Cancel</a></p>
</body>
</html>