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
		<h1>Add New Employee</h1>
		<form action="/addEmployee" method="post">
			Name:<input type="text" name="name"><br>
			<br> Salary<input type = "text" name = "salary"><br>
			 <br>Designation:<input type="text" name="designation"><br> <br>
			<input type="submit" value="Add Employee">

		</form>

	</center>
</body>
</html>