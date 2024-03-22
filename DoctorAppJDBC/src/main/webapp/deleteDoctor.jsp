<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Doctor</title>
</head>
<body>
	<div>
		<h1>Deleting a doctor record</h1>
		<a href="index.jsp"><button>Go back to home page</button></a>
	</div>
	<br>
	<fieldset>
		<legend align="center">Options</legend>
		<form action="deleteServlet" method="post">
			<table align="left" border="1">
				<td><input type="number" name="doctorId" placeholder="enter doctor id"></td>
				<td><input type="submit" value="Delete"></td>
			</table>
			
		</form>
	</fieldset>
</body>
</html>