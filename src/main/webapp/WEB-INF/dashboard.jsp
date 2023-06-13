<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/12/2023
  Time: 6:16 PM
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
<div class="d-flex justify-content-xl-between m-4">
    <a href="/song/new">Add New</a>
    <a href="/song/top-ten">Top Songs</a>
    <div>
        <form:form action="/search" method="get">
    <input type="text" name="artist"  required >
    <input class="btn btn-primary" type="submit" value="search">
        </form:form>
    </div>
</div>
<div class="table">
    <table class="table table-primary m-4 border border-dark">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Rating</th>
            <th scope="col">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${allSongs}" var="song">
            <tr class="table-primary">
                <td><a href="/song/${song.id}"/>${song.title}</td>
                <td><c:out value="${song.rating}"/> </td>
                <td>
                    <form:form action="/delete/${song.id}" method="delete" >
                        <button class="btn btn-danger" >delete</button>
                    </form:form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
