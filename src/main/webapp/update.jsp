<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <c:forEach items="${update_key}" var="stu">
     
      <form action="UpdateServlet" method="post">
       Roll :<input type="text" name="roll" value="${stu.roll}"/><br/><br/>
       Name :<input type="text" name="name" value="${stu.name}"><br/><br/>
       Email :<input type="text" name="email" value="${stu.email}"><br/><br/>
       Password :<input type="text" name="password" value="${stu.password}"><br/><br/>
       <input type="submit" value="Register"/>
       </form>
     </c:forEach>
</body>
</html>