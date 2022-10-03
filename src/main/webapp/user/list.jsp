<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 10/2/2022
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
  <h1>User Management</h1>
  <h2>
    <a href="/users?action=create">Add New User</a>
  </h2>
</center>
<form class="form-group search-form" action="/users" method="post">
<input name="search" class="form-control search-input" type="text" placeholder="Type something to search">
<input type="hidden" name="action" value="searchBy">
<button type="submit" class="btn btn-primary search-btn">Seacrh</button>
<a href="/users?action=create"
   class="btn btn-primary search-btn">Add</a>
<a href="/users" class="btn btn-primary search-btn">Menu</a>

<div align="center">
<caption><h2>List of Users</h2></caption>
<table border="1" cellpadding="5" class="table">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
      <tr>
      <c:forEach var="user" items="${requestScope['listUser']}">
        <td><a href="/users?action=view&id=${user.getId()}">${user.getName()}</a></td>
        <td><c:out value="${user.getEmail()}"/></td>
        <td><c:out value="${user.getCountry()}"/></td>
        <td>
          <a href="/users?action=edit&id=${user.getId()}">Edit</a>
          <a href="/users?action=delete&id=${user.getId()}">Delete</a>
        </td>
        </tr>
      </c:forEach>
  </c:forEach>
      </div>
</form>
      </body>
      </html>
      </table>