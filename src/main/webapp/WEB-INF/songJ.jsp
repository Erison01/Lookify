<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/13/2023
  Time: 12:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="m-4">
<h1>Song Details</h1>
<p>Title: <c:out value="${songS.title}"/></p>
<p>Artist: <c:out value="${songS.artist}"/></p>
<p>Rating: <c:out value="${songS.rating}"/></p>
<a href="/dashboard">Dashboard</a>
</div>
</body>
</html>
