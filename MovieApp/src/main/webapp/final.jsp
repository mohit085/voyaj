<%@ page import="java.util.*" %>
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
	out.println("SessionId "+session.getId()+"<br>");
	out.println("Maxinactive "+session.getMaxInactiveInterval()+"<br>");
	out.println("Creation Time "+session.getCreationTime()+"<br>");
		
		List<String> movies = (List<String>)request.getAttribute("movies");
		
		out.println("The  list of movies  are : <br>");
		for(String movie: movies){
			out.println(movie+"<br>");
		}
	%>
</body>
</html>