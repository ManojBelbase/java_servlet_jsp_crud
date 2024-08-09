<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Data List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 18px;
            text-align: left;
            background-color: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr {
            border-bottom: 1px solid #dddddd;
        }

        tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        tr:last-of-type {
            border-bottom: 2px solid #4CAF50;
        }

        input[type="submit"] {
            background-color: #ff4d4d;
            color: white;
            padding: 8px 12px;
            margin-right: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }

        input[type="submit"]:hover {
            background-color: #ff3333;
        }

        .update-button {
            background-color: #4CAF50;
            color: white;
        }

        .update-button:hover {
            background-color: #45a049;
        }
    </style>
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
                    <form action="deleteData" method="post" style="display:inline-block;">
                        <input type="hidden" name="roll" value="${stu.roll}"/>
                        <input type="submit" value="Delete"/>
                    </form>
                    <form action="UpdateData" method="post" style="display:inline-block;">
                        <input type="hidden" name="roll" value="${stu.roll}"/>
                        <input type="submit" value="Update" class="update-button"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
