<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <form action="regForm" method="post">
       Roll :<input type="text" name="roll"/><br/><br/>
       Name :<input type="text" name="name"><br/><br/>
       Email :<input type="text" name="email"><br/><br/>
       Password :<input type="text" name="password"><br/><br/>
       <input type="submit" value="Register"/>
       </form>
        <br/>
    <form action="ViewData" method="get">
        <input type="submit" value="View Data"/>
    </form>
</body>
</html>
