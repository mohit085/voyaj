<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>User Details</h2>
	
	<% 
	out.println("SessionId "+session.getId()+"<br>");
	out.println("Maxinactive "+session.getMaxInactiveInterval()+"<br>");
	out.println("Creation Time "+session.getCreationTime()+"<br>");
	
	String username = (String)session.getAttribute("username");
	session.setMaxInactiveInterval(1);
	out.println("Welcome"+username);
	%>
	
	<form action="movieServlet">
		Select language<select name="language">
			<option value="English">English</option>
			<option value="Hindi">Hindi</option>
			<option value="Bhojpuri">Bhojpuri</option>
			<option value="Kannada">Kannada</option>
			
		</select>
		<input type="submit" value="Show Movies">
	</form>
</body>
</html>