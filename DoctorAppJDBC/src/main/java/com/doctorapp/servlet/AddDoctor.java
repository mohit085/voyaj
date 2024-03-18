package com.doctorapp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doctorapp.model.Doctor;
import com.doctorapp.service.DoctorServiceImpl;
import com.doctorapp.service.IDoctorService;

/**
 * Servlet implementation class AddDoctor
 */
@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String doctorName = request.getParameter("doctorName");
		String speciality = request.getParameter("speciality");
		double fees = Double.parseDouble(request.getParameter("fees"));
		int experience = Integer.parseInt(request.getParameter("experience"));
		int ratings = Integer.parseInt(request.getParameter("ratings"));
		
		Doctor doctor = new Doctor();
		doctor.setDoctorName(doctorName);
		doctor.setSpeciality(speciality);
		doctor.setFees(fees);
		doctor.setExperience(experience);
		doctor.setRatings(ratings);

		IDoctorService doctorService = new DoctorServiceImpl();
		doctorService.addDoctor(doctor);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
