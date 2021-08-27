<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Schedule</title>
</head>
<body>
<%
String state=request.getParameter("stateform");
String district=request.getParameter("districtform");
String hos=request.getParameter("hosform");
String dat=request.getParameter("dateform");
String slot=request.getParameter("timeform");

Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Nanditha@06");

Statement st=conn.createStatement();

int j=st.executeUpdate("INSERT INTO schedule(state,district,hospital,date, timeslot) values('"+state+"','"+district+"','"+hos+"','"+dat+"','"+slot+"')");

response.sendRedirect("validateuser.jsp");
%>
</body>
</html>