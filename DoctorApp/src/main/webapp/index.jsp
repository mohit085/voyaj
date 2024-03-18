<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="doctorServlet">
		DoctorName<input  type="text" name="doctorName">
		<br>
		DoctorId<input type="text" name="doctorId">
		<br>
		Fees<input type="text" name="fees">
		<br>
		Experience<input type="number" name="experience">
		<br>
		Rating<input type="number" name="ratings">
		<br>
		
		Speciality<select name="speciality">
			<option value="Orthopedics" >Orthopedics</option>
			<option value="Dermatology" >Dermatology</option>
			<option value="Radiology" >Radiology</option>
			<option value="Gynecologist" >Gynecologist</option>
			<option value="Neurologist" >Neurologist</option>
		</select>
		<br>
		
		<input type="submit" value="submit">
		
	</form>
</body>
</html>