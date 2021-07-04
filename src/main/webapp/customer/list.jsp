
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List customer</title>
</head>
<body>
<center>
    <h1>Customer list</h1>
    <h2><a href="/customers?action=create">Add New User</a></h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List customer</h2></caption>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="customer" items="${customerList}">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.age}</td>
                <td>
                    <a href="/customers?action=edit&id=${customer.id}">Edit</a>
                </td>
                <td>
                    <a href="/customers?action=delete&id=${customer.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
