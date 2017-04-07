<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: blvp
  Date: 07.04.17
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <thead>
    <tr>
        <td>id</td>
        <td>firstname</td>
        <td>lastname</td>
        <td>gender</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="entry" items="${users}">
        <c:set var="user" value="${entry.value}"/>
        <c:set var="userId" value="${entry.key}"/>
        <tr>
            <td>${userId}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>
                <c:out value="${user.gender ? 'M': 'F'}"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/">Back</a>
</body>
</html>
