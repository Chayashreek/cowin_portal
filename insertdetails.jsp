<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<body>

<%-- <%
String id_proof=request.getParameter("Select");
String id_number=request.getParameter("pid");
String Name=request.getParameter("uname");
String gender=request.getParameter("gender");
String year=request.getParameter("dob");
String num=(String)session.getAttribute("mobile_num");

session.setAttribute("mobile_num", num);
session.setAttribute("name",Name); 
session.setAttribute("proof",id_proof);
session.setAttribute("number",id_number);
session.setAttribute("year",year);


Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Nanditha@06");
Statement st=conn.createStatement();
int j = st.executeUpdate("INSERT INTO userdata(id_proof,id_number,name,gender,year,mobile_number) VALUES('"+id_proof+"','"+id_number+"','"+Name+"','"+gender+"','"+year+"','"+num+"')");

response.sendRedirect("validateuser.jsp");
%> --%>


<%
String num=(String)session.getAttribute("mobile_num");
out.println(num);

String id_proof=(String)request.getParameter("Select");
String id_number=(String)request.getParameter("id_number");
String Name=(String)request.getParameter("uname");
String gender=(String)request.getParameter("gender");
String year=(String)request.getParameter("ddlYears");
//if(id_number==null)
	//out.println("INVALID");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Nanditha@06");
Statement st=con.createStatement();
int j = st.executeUpdate("INSERT INTO userdata(mobile_number,id_proof,id_number,name,gender,year) VALUES('"+num+"','"+id_proof+"','"+id_number+"','"+Name+"','"+gender+"','"+year+"')");

response.sendRedirect("validateuser.jsp?mobile="+num);
%>




</body>
</html>