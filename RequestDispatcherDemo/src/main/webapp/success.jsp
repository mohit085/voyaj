<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorHandler.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>User Details</h2>

<% 
		String employeeName = (String)request.getAttribute("employeeName");
		String city = (String)request.getAttribute("city");
		double salary = (Double)request.getAttribute("salary");
		String course = (String)request.getAttribute("course");
		long mobile = (Long)request.getAttribute("mobile");
		String[] hobbies = (String[])request.getAttribute("hobbies"); 
		
		out.println("Employee Name : "+employeeName+"<br>");
		out.println("City :"+city+"<br>");
	    out.println("Salary : "+salary+"<br>");
		out.println("Course :"+course+"<br>");
		out.println("Mobile : "+mobile+"<br>"); 
		
		out.println("Hobbies");
		for(String hobby : hobbies) {
				out.print("Hobby :"+hobby.toUpperCase()+"<br>");
		}
%>
</body>
</html>