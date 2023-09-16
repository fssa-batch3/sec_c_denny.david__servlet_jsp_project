package com.fssa.studentmanagementapp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.studentmanagementapp.Service.StudentService;
import com.fssa.studentmanagementapp.model.Student;

/**
 * Servlet implementation class StudentList
 */
@WebServlet("/FindStudentByName")
public class StudentList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ArrayList<Student> stu = StudentService.getAllStudent();
		request.setAttribute("STUDENT_LIST", stu);
		
		RequestDispatcher dis = getServletContext().getRequestDispatcher("/studentList.jsp");
		dis.forward(request, response);
	}

	
    
}
