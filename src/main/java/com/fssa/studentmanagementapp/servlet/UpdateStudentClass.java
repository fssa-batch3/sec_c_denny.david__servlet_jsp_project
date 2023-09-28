package com.fssa.studentmanagementapp.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.studentmanagementapp.Service.StudentClassService;

public class UpdateStudentClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentClassService studentClassService= new StudentClassService();
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String selectedStudent=(String) request.getParameter("selectedStudent");
		int selectedClass=Integer.parseInt(request.getParameter("selectedClass")) ;
		
		try {
			studentClassService.updateStudentToClass(selectedStudent, selectedClass);
			System.out.println(" Student updated  to class successfully");
		} catch (SQLException e) {
			System.out.println(" Student updation to class failed");
			e.printStackTrace();
		}
		
		response.sendRedirect("./Class.jsp");
	}
}
