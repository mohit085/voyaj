<%@page import="com.doctorapp.model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Doctor doctor = (Doctor) request.getAttribute("doctor");
	
		String name = doctor.getDoctorName();
		out.println("Doctor Name : "+name+"<br>");
		
		int doctorId = doctor.getDoctorId();
		out.println("DoctorId  : "+doctorId+"<br>");
		
		String speciality = doctor.getSpeciality();
		out.println("Speciality : "+speciality+"<br>");
		
		double fees = doctor.getFees();
		out.println("Fees :"+fees+"<br>");
		
		int experience = doctor.getExperience();
		out.println("Total Experience : "+experience+"<br>");
		
		int ratings = doctor.getRatings();
		out.println("Overall Rating :"+ratings+"<br>");
	%>
</body>
</html>