<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Edit the Doctor Record</h1>
	<fieldset>
		<form action="updateDoctor.jsp" method="post">
			<table align="left" border="2">
				<tr>
					<td>Enter DoctorId</td>
					<td><input type="number" name="doctorId"></td>
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