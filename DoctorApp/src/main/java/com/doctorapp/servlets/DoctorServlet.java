package com.doctorapp.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doctorapp.model.Doctor;

/**
 * Servlet implementation class DoctorServlet
 */
@WebServlet("/doctorServlet")
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// response.setContentType("text/html");
		
		String doctorName = request.getParameter("doctorName");
		Integer doctorId = Integer.parseInt(request.getParameter("doctorId"));
		String speciality = request.getParameter("speciality");
		double fees = Double.parseDouble(request.getParameter("fees"));
		int experience =  Integer.parseInt(request.getParameter("experience"));
		int ratings = Integer.parseInt(request.getParameter("ratings"));
		
		Doctor doctor = new Doctor();
		
		doctor.setDoctorName(doctorName);
		doctor.setDoctorId(doctorId);
		doctor.setSpeciality(speciality);
		doctor.setFees(fees);
		doctor.setExperience(experience);
		doctor.setRatings(ratings);
		
		request.setAttribute("doctor", doctor);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("docsuccess.jsp");
		
		dispatcher.forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
