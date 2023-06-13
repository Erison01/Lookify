<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/13/2023
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<h1>Add Song</h1>
<form:form action="/create" method="post" modelAttribute="theSong">
    <div>
        <form:label path="title">Title</form:label>
        <form:input path="title"></form:input>
        <form:errors path="title" cssClass="text-danger"></form:errors>
    </div>
    <div>
        <form:label path="artist">Artist</form:label>
        <form:input path="artist"></form:input>
        <form:errors path="artist" cssClass="text-danger"></form:errors>
    </div>
    <div>
        <form:label path="rating" for="numberInput1">Rating(1-10)</form:label>
        <form:input path="rating" class="input-sie" type="number" id="numberInput1" min="1" max="10" step="1"></form:input>
        <form:errors path="rating" cssClass="text-danger"></form:errors>
    </div>
    <button class="btn btn-primary">Add</button>
</form:form>
    <a href="/dashboard">Dashboard</a>
</body>
</html>
