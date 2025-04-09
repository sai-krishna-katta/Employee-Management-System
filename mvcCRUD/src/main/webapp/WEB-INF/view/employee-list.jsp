<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Employees List</title>
<style>
/* Table styling */
table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid black;
}

th, td {
	padding: 8px;
	text-align: left;
}
/* Header styling */
th {
	background-color: #f2f2f2;
}
/* Styling for the action buttons */
a {
	margin-right: 10px;
	text-decoration: none;
	color: #007bff;
}

a:hover {
	color: #0056b3;
}
/* Styling for the Add New Employee link */
.add-link {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #28a745;
	color: white;
	text-decoration: none;
	border-radius: 5px;
}

.add-link:hover {
	background-color: #218838;
}

h1 {
	font-family: Arial, sans-serif;
	color: #333;
}
</style>
</head>


<body>
	<h1>Employee List</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>salary</th>
			<th>Designation</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${employees}" var="employee">

			<tr>
				<td>${employee.id}</td>
				<td>${employee.name}</td>
				<td>${employee.salary}</td>
				<td>${employee.designation}</td>
				<td><a href="editEmployeeForm?id=${employee.id}">Edit</a> 
				
				 <a href="deleteEmployee?id=${employee.id}">Delete</a>
			</tr>

		</c:forEach>
	</table>

	<a href="/addEmployeeForm" class="add-link">Add new Employee</a>




</body>