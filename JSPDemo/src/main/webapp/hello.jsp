<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorHandler.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>  Welcome to JSP</h1>
	<% String name = "Sri"; %>
	<%="Welcome "+name %>
	<br>
	<%
	int x=20; int y=20;%>
	<%="Sum " + (x+y) %>
	<br>
	<%int counter=1; %>
	<%=counter++ %>
	<br>
	<%! int counter = 0; %>
	you are visitor no: <%= ++counter %>
	<br>
	<%! String greet() {
		return "welcome back";
	}
		%>
	<%= greet() %>
	<% int z=10/0; %>
</body>
</html>