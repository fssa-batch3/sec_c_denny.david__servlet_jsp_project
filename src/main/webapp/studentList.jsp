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
<link rel="stylesheet" href="./assets/css/AddStudent.css">

</head>
<body>
	<%
	String view = request.getParameter("view");
	boolean isClass = "class".equals(view);
	%>

	<nav class="sidebar">
		<h2 id="project_name">Student Management App</h2>


		<ul>
			<li><a id="active" href="home.jsp">Home</a></li>
			<li><a id="active" href="./StudentList">Student List</a></li>
			<li><a id="active" href="Class.jsp">Class</a></li>
		</ul>
	</nav>
	<main>
		<form action="./FindByNameServlet" method="get">
			<input type=text placeholder="  Search student by name: "
				name="search"></input>
			<button type="submit">Search</button>
			<%-- <button id="assign_student">Add Student</button>--%>
			<p id="openModalButton">Add Student</p>
		</form>
	</main>


	<%
	if (!isClass) {
	%>

	<div class="assignStudentDiv" id="assignStudent">
		<form action="./AssignStudent" method="post">

			<h3>Assign student to a class</h3>
			<div class="assignDetails">
				<p>Student name</p>
				<input id="selectedStudentEmail" name="selectedStudent" type="text"
					readonly>
			</div>
			<div class="assignDetails">
				<p>Enter class number</p>
				<input id="selectedStudentClassNum" name="selectedClass"
					type="number">
			</div>
			<button type="submit">Assign</button>
		</form>
	</div>
	<%
	} else {
	%>

	<div class="assignStudentDiv" id="assignStudent">
		<form action="./UpdateStudentClass" method="post">

			<h3>Update student to a class</h3>
			<div class="assignDetails">
				<p>Student name</p>
				<input id="selectedStudentEmail" name="selectedStudent" type="text"
					readonly>
			</div>
			<div class="assignDetails">
				<p>Enter class number</p>
				<input id="selectedStudentClassNum" name="selectedClass"
					type="number">
			</div>
			<button type="submit">Update</button>
		</form>
	</div>
	<%
	}
	%>


	<div class="table">
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Gender</th>
					<th>Email</th>
					<th>Date of Birth</th>
					<th>Phone no</th>
					<th>Class</th>
					<%
					if (!isClass) {
					%>
					<th>Assign to class</th>
					<%
					}
					%>
					<%
					if (isClass) {
					%>
					<th>Update class</th>
					<th>Edit</th>
					<%
					}
					%>


				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<Student> stuList = (ArrayList<Student>) request.getAttribute("STUDENT_LIST");
			
				int id = 1;
				%>
				<%
				if (stuList != null) {
					for (Student details : stuList) {
				%>
				<tr>
					<td><%=id%></td>
					<td><%=details.getName()%></td>
					<td><%=details.getGender().toString()%></td>
					<td class="studentEmail"><%=details.getEmailId()%></td>
					<td><%=details.getDob()%></td>
					<td><%=details.getMobileNo()%></td>
					<td><%=details.getClass_id() == -1 ? "--" : details.getClass_id()%></td>
					<%
					if (!isClass) {
					%>
					<td><button class="assignButton">Assign</button></td>
					<%
					}
					%>
					<%
					if (isClass) {
					%>
					<td><button class="updateButton">Update</button></td>
					<td><button class="editButton">Edit</button></td>
					<%
					}
					%>
				</tr>
				<%
				id++;
				}
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
	<div id="addstupopup">
		<div id="userModal" class="modal">
			<div class="modal-content">
				<span class="close">&times;</span>
				<form class="form" action="./AddStudentServlet" method="post">
					<h1 id="add_student">Add Student</h1>
					<label for="name">Enter your name:</label> <input type="text"
						id="name" name="name"> <label for="dob">Date of
						Birth (dd/mm/yyyy):</label> <input type="date" id="dob" name="dob">

					<label for="gender">Gender:</label> <select id="gender"
						name="gender">
						<option value="MALE">MALE</option>
						<option value="FEMALE">FEMALE</option>
					</select> <label for="email">Email Id:</label> <input type="email"
						id="email" name="email"> <label for="password">Password:</label>
					<input type="password" id="password" name="password"> <label
						for="mobileNo">Mobile No:</label> <input type="text" id="mobileNo"
						name="mobileNo">

					<div class="button-container">
						<input type="submit" value="Submit">
					</div>
				</form>
			</div>
      </div>
     </div>
     
     <div id="editstupopup">
		<div id="userModal" class="modal">
			<div class="edit-content">
				<span class="close">&times;</span>
				<form class="form" action="./AddStudentServlet" method="post">
					<h1 id="add_student">Add Student</h1>
					<label for="name">Enter your name:</label> <input type="text"
						id="name" name="name"> <label for="dob">Date of
						Birth (dd/mm/yyyy):</label> <input type="date" id="dob" name="dob">

					<label for="gender">Gender:</label> <select id="gender"
						name="gender">
						<option value="MALE">MALE</option>
						<option value="FEMALE">FEMALE</option>
					</select> <label for="email">Email Id:</label> <input type="email"
						id="email" name="email"> <label for="password">Password:</label>
					<input type="password" id="password" name="password"> <label
						for="mobileNo">Mobile No:</label> <input type="text" id="mobileNo"
						name="mobileNo">

					<div class="button-container">
						<input type="submit" value="Submit">
					</div>
				</form>
			</div>
      </div>
     </div>

</body>
<script src="./assets/js/AddStudent.js"></script>
<script src="./assets/js/StudentList.js"></script>
</html>