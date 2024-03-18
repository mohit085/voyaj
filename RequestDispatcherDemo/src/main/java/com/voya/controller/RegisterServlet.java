package com.voya.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String employeeName = request.getParameter("employeeName");
		String city = request.getParameter("city");
		double salary = Double.parseDouble(request.getParameter("salary"));
		long mobile = Long.parseLong(request.getParameter("mobile"));
		String course = request.getParameter("course");
		String[] hobbies = request.getParameterValues("hobbies");
		
		//set attribute to send the object to  the next page
		
		request.setAttribute("employeeName",employeeName);
		request.setAttribute("city",city);
		request.setAttribute("salary",salary);
		request.setAttribute("mobile",mobile);
		request.setAttribute("course",course);
		request.setAttribute("hobbies",hobbies);
		
		PrintWriter writer = response.getWriter();
		writer.print("This is from servlet<br>");
		
//		//create the dispatcher to send to the next page
		RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
//		
//		// forward request and response
		dispatcher.forward(request, response);
		
		response.sendRedirect("success.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
