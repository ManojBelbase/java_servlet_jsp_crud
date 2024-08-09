<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Data List</title>
</head>
<body>
<table>
    <tr>
        <th>Roll</th>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${student}" var="stu">
        <tr>
            <td><c:out value="${stu.roll}"/></td>
            <td><c:out value="${stu.name}"/></td>
            <td><c:out value="${stu.email}"/></td>
            <td><c:out value="${stu.password}"/></td>
            <td>
                <form action="deleteData" method="post">
                    <input type="hidden" name="roll" value="${stu.roll}"/>
                    <input type="submit" value="Delete"/>
                </form>
                <form action="UpdateData" method="post">
                    <input type="hidden" name="roll" value="${stu.roll}"/>
                    <input type="submit" value="Update"/>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
