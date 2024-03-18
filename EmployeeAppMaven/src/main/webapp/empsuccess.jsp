<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.employeeapp.service.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	out.println("Employee Details <br>");
	
	Employee employee = (Employee)request.getAttribute("employee");
	
	String employeeName = employee.getEmployeeName();
	out.println("Empoyee Name:"+employeeName+"<br>");
	
	Integer employeeId = employee.getEmployeeId();
	out.println("Empoyee Id:"+employeeId+"<br>");
	
	Double salary = employee.getSalary();
	out.println("Salary:"+salary+"<br>");
	
	String city = employee.getCity();
	out.println("City:"+city+"<br>");
	
	%>
</body>
</html> 