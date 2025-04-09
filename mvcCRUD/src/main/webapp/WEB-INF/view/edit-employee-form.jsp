<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Edit Employee</h1>
<form action = "/editEmployee" method = "post">
<input type = "hidden" name = "id" value ="${employee.id }">
Name:<input type = "text" name = "name" value ="${employee.name}"><br><br>
Salary:<input type = "text" name = "salary" value ="${employee.salary }"><br><br>
Designation:<input type = "text" name = "designation" value ="${employee.designation}"><br><br>
<input type = "submit"  value ="Save Changes">
</form>
</center>
</body>
</html>