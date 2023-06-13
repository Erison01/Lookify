<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/13/2023
  Time: 1:26 PM
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
<h1 class="m-4">Top Songs</h1>
<div class="table">
    <table class="table table-primary m-4 border border-dark">

        <c:forEach items="${topSong}" var="song">
            <tr class="table-primary">
                <td><c:out value="${song.rating}"/> </td>
                <td><a href="/song/${song.id}"/>${song.title}</td>

                <td> <c:out value="${song.artist}"/></td>
            </tr>
        </c:forEach>
    </table>
    <a class="m-4" href="/dashboard">Dashboard</a>
</div>
</body>
</html>
