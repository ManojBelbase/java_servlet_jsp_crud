<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    .view-data {
        margin-top: 20px;
        text-align: center;
    }

    .view-data input[type="submit"] {
        background-color: #008CBA;
    }

    .view-data input[type="submit"]:hover {
        background-color: #007bb5;
    }
</style>
</head>
<body>
    <form action="regForm" method="post">
        <h2>Register</h2>
        Roll: <input type="text" name="roll"/><br/>
        Name: <input type="text" name="name"><br/>
        Email: <input type="text" name="email"><br/>
        Password: <input type="password" name="password"><br/>
        <input type="submit" value="Register"/>
    </form>
    <div class="view-data">
        <form action="ViewData" method="get">
            <input type="submit" value="View Data"/>
        </form>
    </div>
</body>
</html>
