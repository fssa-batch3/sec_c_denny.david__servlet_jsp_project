<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
    <%@page import="com.fssa.studentmanagementapp.model.Student"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class 8</title>
<link rel="stylesheet" href ="./assets/css/Class8.css">
</head>
<body>
 <nav class="sidebar">
        <h2 id="project_name" >Student Management App</h2>
       
       
        <ul>
            <li><a href="Home.html" id="active">Home</a></li>
            <li><a id="active" href="#">Student</a></li>
            <li><a id="active" href="Student_list.html">Student List</a></li>
            <li><a id="active" href="#">Class</a></li>
        </ul>
    </nav>
    <main>
    <div class = "main">
      <form>
        <input type=text placeholder="  Search student by name: " name = "name"></input>
        <button id="search">Search</button>
        <a href = "#"><button id="assign_student">Assign Student</button></a>
        </div>
      </form>
    </main>
    <div class="table">
        <table>
            <thead>
                <tr>
                    <th style="background-color: rgb(48, 48, 50); color:white;" >Id</th>
                    <th style="background-color: rgb(48, 48, 50); color:white;">Name</th>
                    <th style="background-color: rgb(48, 48, 50); color:white;">Gender</th>
                    <th style="background-color: rgb(48, 48, 50); color:white;">Email</th>
                    <th style="background-color: rgb(48, 48, 50); color:white;">Date of Birth</th>
                    <th style="background-color: rgb(48, 48, 50); color:white;">Phone no</th>
                    <th style="background-color: rgb(48, 48, 50); color:white;">ACTIVE</th>
                </tr>
            </thead>
            <tbody>
                
            </tbody>
        </table>
     </div>
     <div class=”popup”>
     <button id=”close”>&times;</button>
     <h2>Assign Student</h2>
     <p>Student Id</p>
     <input type=text ></input>
     <p>Class</p>
     <input type=text ></input>
     <a id="assign" href=”#”>Assign</a>
     </div>
</body>
<script src="./assets/js/Class8.js"></script>
</html>






