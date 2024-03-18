<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="register">
        Enter employeeName <input type="text" name="employeeName" placeholder="Enter Name">
        <br>
        Enter city <input type="text" name="city" placeholder="Enter city">
        <br>
        Enter salary<input type="number" name="salary" placeholder="Enter salary">
        <br>
        Enter mobile<input type="tel" name="mobile" placeholder="Enter mobile number">
        <br>
        
        Select Course
        <select name="course">
        	<option>--Select--</option>
        	<option value="Java">Java</option>
            <option value="Spring">Spring</option>
            <option value="Angular">Angular</option>
            <option value="Node">Node</option> 			
        </select>
        <br>
        
        Select hobbies
        <input type="checkbox" name="hobbies" value="cricket">cricket
        <input type="checkbox" name="hobbies" value="coding">coding
        <input type="checkbox" name="hobbies" value="singing">singing
        <input type="checkbox" name="hobbies" value="swimming">swimming
        <br>
        
        <input type="submit" value="submit">
     </form>
</body>
</html>