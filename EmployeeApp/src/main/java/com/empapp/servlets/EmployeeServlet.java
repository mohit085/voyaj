package com.empapp.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.empapp.model.Employee;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/employeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.setContentType("text/html");
		
		String employeeName = request.getParameter("employeeName");
		String city = request.getParameter("city");
		Integer employeeId = Integer.parseInt(request.getParameter("employeeId"));
		double salary = Double.parseDouble(request.getParameter("salary"));
		String course = request.getParameter("course");
	
		//  create employee and set the values
		Employee employee = new Employee();
		employee.setEmployeeName(employeeName);
		employee.setCity(city);
		employee.setEmployeeId(employeeId);
		employee.setSalary(salary);
		employee.setCourse(course);
		
		// send the employee object to next jsp page
		// bundle it by giving a dummy name
		
		request.setAttribute("employee", employee);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("empsuccess.jsp");
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
