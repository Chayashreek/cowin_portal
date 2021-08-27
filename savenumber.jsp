<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Number</title>
</head>
<body>

<%
String number=request.getParameter("num");
out.println(number);

session.setAttribute("number",number); 

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Nanditha@06");
Statement st=conn.createStatement();
int j = st.executeUpdate("INSERT INTO userdata(mobile_number) VALUES('"+number+"')");

response.sendRedirect("addmember.jsp");
%>


</body>
</html>