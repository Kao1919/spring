<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<th>Student ID</th>
<th>Student Name</th>
<th>Adress</th>
<tr>
<c:forEach items="${message}" var="student">
<tr>
<td>${student.studentId}</td>
<td>${student.name}</td>
<td>${student.address}</td>
</tr>
</c:forEach>


</table>

</body>
</html>