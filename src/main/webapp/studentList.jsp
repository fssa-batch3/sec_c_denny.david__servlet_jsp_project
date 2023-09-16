<%@page import="com.fssa.studentmanagementapp.model.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listing students</title>

<link rel="stylesheet" href="./assets/css/StudentList.css">

</head>
<body>

				
	<nav class="sidebar">
		<h2 id="project_name">Student Management App</h2>
		<div class="create_block">
			<img id="add_student"
				src="https://cutewallpaper.org/24/add-icon-png/file-argument-for-svg-add-icons-vector-svg-hd-png-download-kindpng.png">
			<p id="create_student">
				<a href="AddStudent.html">Add<br> Student 
			</p>
		</div>

		<ul>
			<li><a href="Home.html" id="active">Home</a></li>
			<li><a id="active" href="#">Student</a></li>
			<li><a id="active" href="Student_list.html">Student List</a></li>
			<li><a id="active" href="#">Class</a></li>
		</ul>
	</nav>
	<main>
		<form action="FindStudentByName">
			<input type=text placeholder="  Search student by name: " name="name"></input>
			<button>Search</button>
		</form>
	</main>
	<div class="table">
		<table>
			<thead>
				<tr>
					<th style="background-color: rgb(48, 48, 50); color: white;">Id</th>
					<th style="background-color: rgb(48, 48, 50); color: white;">Name</th>
					<th style="background-color: rgb(48, 48, 50); color: white;">Gender</th>
					<th style="background-color: rgb(48, 48, 50); color: white;">Email</th>
					<th style="background-color: rgb(48, 48, 50); color: white;">Date
						of Birth</th>
					<th style="background-color: rgb(48, 48, 50); color: white;">Phone
						no</th>

				</tr>
			</thead>
			<tbody>
               <% 
				
               ArrayList<Student> stuList = (ArrayList<Student>) request.getAttribute("STUDENT_LIST") ; 
               int id = 1;%>
				<%if (stuList != null) {
					for (Student details : stuList) {
				%>
				<tr>
					<td><%=id%></td>
					<td><%=details.getName()%></td>
					<td><%=details.getGender().toString()%></td>
					<td><%=details.getEmailId()%></td>
					<td><%=details.getDob()%></td>
					<td><%=details.getMobileNo()%></td>
				</tr>
				<%
				id++;}
				} 
				
				else {
				%>
				<p>No record found</p>
				<%
				}
				%>


			</tbody>
		</table>
	</div>
</body>
</html>