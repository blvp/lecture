<%--
  Created by IntelliJ IDEA.
  User: blvp
  Date: 07.04.17
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/users" method="post">
    <input type="text" placeholder="First Name" name="firstName">
    <input type="text" placeholder="Last Name" name="lastName">
    <select name="gender">
      <option value="true">M</option>
      <option value="false">F</option>
    </select>
    <button type="submit">Create User</button>
  </form>
  </body>
</html>
