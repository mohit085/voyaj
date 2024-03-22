<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>getting id of doctor</title>
</head>
<body>
	<div>
		<h1>Getting a Doctor Record</h1>
		<a href="index.jsp"><button>Go Back to Home Page</button></a>
	</div>
	<br>
	<fieldset>
		<legend align="center">Get Doctor ID</legend>
			<form action="editServlet" method="post">
				<table align="left" border="2">
					<tr>
						<td>Enter DoctorId</td>
						<td><input type="number" name="doctorId" placeholder="Enter Doctor ID"></td>
					</tr>
					<tr>
						<td><input type="submit" value="Submit"></td>
						<td><input type="reset" value="Reset"></td>
					</tr>
				</table>
			</form>
	</fieldset>
</body>
</html>