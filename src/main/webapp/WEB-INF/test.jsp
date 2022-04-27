<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>  

<table>
	<h1>Hello, ${user_name}. Here are some name suggestions..</h1>
	<p>Baby Names</p>
	<p><a href="/logout">Log out</a></p>
	<p><a href="/names/new">new name</a></p>
    <thead>
        <tr>
        </tr>
    </thead>
    <tbody>

    </tbody>
</table>