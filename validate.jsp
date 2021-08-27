<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="plugins/cubeportfolio/css/cubeportfolio.min.css">
	<link href="css/nivo-lightbox.css" rel="stylesheet" />
	<link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">

	<!-- boxed bg -->
	
	<!-- template skin -->
	<link id="t-colors" href="color/default.css" rel="stylesheet">

</head>
<body>
    <div class="intro-content">
        <div id="wrapper">
	
            <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
                <div class="top-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 col-md-6">
                            <p class="bold text-left">Helpline 91-11-23978046 </p>
                            </div>
                            <div class="col-sm-6 col-md-6">
                            <p class="bold text-right">Health Ministry 1075</p>
                            </div>
                        </div>
                    </div>
                </div>
                </nav>
                </div>
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
</div>
<div style="background:#03256c;padding:20px;margin-left:-120px;margin-right:-112px"">
    <p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
</div>
</body>
</html>