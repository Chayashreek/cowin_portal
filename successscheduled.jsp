<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>

<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="plugins/cubeportfolio/css/cubeportfolio.min.css">
	<link href="css/nivo-lightbox.css" rel="stylesheet" />
	<link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">
     <link href="navigate.css" rel="stylesheet">
     <link id="t-colors" href="color/default.css" rel="stylesheet"> 
        
    
<style>
	.intro-content{
		padding-top: 10px;
	}
	.division1{
		font-family: Arial, Helvetica, sans-serif;
		padding-left: 20px;
	}
	.division2{
		font-family: Arial, Helvetica, sans-serif;
		padding-left: 200px;
		margin-top: 20px;
		padding-top: 20px;
	}
	#myTabContent{
		border-style: groove;
		border-radius:6px;
		margin-top: 20px;
		padding-bottom:-70px;
		padding-top: 20px;
	}
	.submit{
		margin-left: 45%;
		margin-top: 2%;
		margin-bottom: 2%;
		background-color: white;
		color: black;
		padding: 7px;
		font-size: 14px;
		border-color: black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	.submitit{
		margin-left: 45%;
		margin-top: 2%;
		margin-bottom: 2%;
		background-color: white;
		color: black;
		padding: 7px;
		font-size: 14px;
		border-color: black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	.contentTab{
		margin-top: 20px;
		padding-bottom:-70px;
		padding-top: 20px;
		
	}
</style>

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

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
						
						
						<!-- <div class="col-sm-6 col-md-6"> -->
						<!-- <ul class="nav navbar-nav">
						<li class="active"><a href="fristpage.html">HOME</a></li>
						<li class="active"><a href="fristpage.html">CHAT</a></li></ul>
						</div> -->
						</div>
				</div>
			</div>
			
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</div>

		<div class="intro-content">

<div class="tab-content content" id="myTabContent">
 <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">


<div class="contentTab">
<div class="addmember">
<%-- <%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Nanditha@06");
Statement st=conn.createStatement();
String query = "select * from schedule0";
ResultSet rs= st.executeQuery(query);
while(rs.next()){
	out.println("<form action=\"schedulepage.html \">");
	//out.println("<label class=\"division1\">State:</label>");
	//out.println(rs.getString("state"));
	//out.println("<label class=\"division2\">District:</label>");
	//out.println(rs.getString("district"));
	out.println("<label class=\"division1\">Hospital:</label>");
	out.println(rs.getString("hospital"));
	out.println("<label class=\"division2\">Date:</label>");
	out.println(rs.getString("dos"));
	out.println("<label class=\"division2\">Time:</label>");
	out.println(rs.getString("timeslot"));
	out.println("<input  type=\"submit\" value=\"ReSchedule\" class=\"submit\" name=\"submit\" id=\"submit\">");
	out.println("</form>");
	out.println("<br>");
}



%> --%>


<%
String phone =(String)session.getAttribute("mobile_num");
String id =(String)session.getAttribute("id_num");
String state = request.getParameter("stateform");
String district = request.getParameter("districtform");
String hospital = request.getParameter("hosform");
String date = request.getParameter("dateform");
String time = request.getParameter("timeform");
out.println(state);

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Nanditha@06");
Statement st=conn.createStatement();
String query = "select * from scheduledata where id='"+id+"'";
ResultSet rs = st.executeQuery(query);
if(rs.next())
{
	Statement str = conn.createStatement();
	str.executeUpdate("delete from scheduledata where id='"+id+"'");
	int j = st.executeUpdate("insert into scheduledata (id,state,district,hosptial,dos,timeslot) values('"+id+"','"+state+"','"+district+"','"+hospital+"','"+date+"','"+time+"')");
	response.sendRedirect("validateuser.jsp?mobile="+phone);
}
else{
	int j = st.executeUpdate("insert into scheduledata (id,state,district,hosptial,dos,timeslot) values('"+id+"','"+state+"','"+district+"','"+hospital+"','"+date+"','"+time+"')");
	response.sendRedirect("validateuser.jsp?mobile="+phone);
}

%>







</div>
</div>
<form action="member.html">
<input type="submit" value="+Add Member" class="submitit" id="submitit" name="submitit">
</form>
<div style="background:#3fbbc0;padding:20px;margin-left:-120px;margin-right:-112px"">
	<p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
</div>
<script>
function change();
{
	document.getElementbyId(".submit").value="Re-Schedule";
	}
    $(document).ready(function(){
    $("#submitit").on('click', function(){
   		window.href.location="member.html";
    	$(".contentTab").show();
    	$(".contentTab").append( );
    	
    
    });
    $("input").click(function() {
        $(".resubmit").prop("value", "Re-Schedule");
    });
    $("#submit").on('click', function(){
   window.href.location="selectplace.html"; 
    	/* window.href.location="reschedule.jsp"; */
    });
    });
    </script>
</body>
</html>