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

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
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
.division1 .division2{
		font-family: Arial, Helvetica, sans-serif;
		
	}
	
	
	.submit{
		margin-left: 40%;
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
		height:50px;
		width:250px;
		margin-left: 43%;
		margin-top: 2%;
		margin-bottom: 2%;
		background-color: #5E35B1;
		color: white;
		padding-left: 14px;
		font-size: 24px;
		border-radius: 6px;
		
		
		
	}
	#myTabContent{
		border-style: groove;
		border-radius:6px;
		margin-top: 20px;
		padding-bottom:-70px;
		padding-top: 20px;
	}
	
	.contentTab{
		margin-top: 130px;
		padding-bottom:-70px;
		padding-top: 20px;
		
	}
	label{
	
	font-weight:700;
	font-size:20px;
	}
	
	.tabpage{
	
	padding-left:100px;
	background-color:white;
	border:2px solid #dadce0;
	border-radius:24px;
	}
	.box{

	padding-left:20px;
	padding-right:20px;
	width:900px;
	margin-left:320px;
	}
	.schedule{
	background-color:#1ee82ef0;
	color:white;
	width:200px;
	font-size:18px;
	font-weight:700;
	border:1px solid;
	margin-right:20px;
	box-shadow:5px 10px;
	 }
	 .reschedule{
	background-color:#ffa000;
	color:white;
	font-size:18px;
	width:200px;
	font-weight:700;
	border:1px solid;
	margin-right:20px;
	box-shadow:5px 10px;
	
	 }
	 span{
		font-size: 20px;
		
		}
		

	#status0 ,#statustime0{
	width:180px;
	font-size:20px;
	
	}
	
	


	
	
	.intro-content{
              padding-top: 50px;
              background-size:cover;
          }
</style>

</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-custom" class="intro-content">
	
	<div id="wrapper">
	
		<nav class="navbar navbar-custom navbar-fixed-top  "role="navigation">
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
			<div class="container navigation">
			<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<a class="navbar-brand" href="index.html">
						<img src="logo1.jpeg" alt="" width="150" height="40" />
					</a>
				  <ul class="nav navbar-nav">
				 <li class="active"><a href="fristpage.html">HOME</a></li>
					
					<li><a href="http://127.0.0.1:5000/chat">CHAT</a></li>
					
					<li class="dropdown">
					  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="badge custom-badge red pull-right">Extra</span>More <b class="caret"></b></a>
					  <ul class="dropdown-menu">
						<li><a href="vaccine.pdf">Vaccine Guidelines</a></li>
						<li><a href="dos_donts.pdf">Do's & Dont's</a></li>
						
					  </ul>
					</li>
				  </ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</div>



<div class="intro-content">
<div class="contentTab">
<div class="addmember">








<%
String mobile_num = request.getParameter("mobile");
session.setAttribute("mobile_num", mobile_num);
//out.println(mobile_num);
%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Nanditha@06");
Statement st=conn.createStatement();
String query="select COUNT(mobile_number) from userdata where mobile_number='"+mobile_num+"'";


ResultSet rs=st.executeQuery(query);
String stquery="";
while(rs.next())
{
	stquery=rs.getString(1);
	 //out.println(j);
}
int j=Integer.parseInt(stquery);
//if(j>=4){
	
     //alert("Cannot add more than 4 members");
     //out.print("Cannot add more than 4 members");
     //response.sendRedirect("error.jsp");
 //}	

if(j<5){
String query1 = "select * from  userdata where mobile_number='"+mobile_num+"'";
ResultSet rs1= st.executeQuery(query1);
	
int i=0;

while(rs1.next()){
	out.println("<form class=\"tabpage box\" action=\"schedulepage.jsp \">");
	out.println("<br><div class='row'> <div class='col-6'>");

	out.println("<label>Name:</label>");
	out.println(rs1.getString("name"));
	out.println("</div> <div class='col-6'>");

	out.println("\n");
	out.println("<label>Photo ID:</label>");
	out.println(rs1.getString("id_proof"));
	out.println("</div></div>");
	out.println("<br>");
	out.println("<div class='row'> <div class='col-6'>");
	out.println("<label>Year of Birth:</label>");
	out.println(rs1.getString("year"));
	out.println("</div> <div class='col-6'>");
	
	out.println("<label>ID Number:</label>");
	//out.println(rs1.getString("id_number"));
	out.println("<input type=\"text\" id=\"name" + i + "\" name=\"name" + i + "\" value=\"" + rs1.getString("id_number")+"\" readonly/>");
	out.println("<input type=\"hidden\" id=\"hidden\" name=\"hidden\" value=\"" + i +"\" />");
	out.println("</div></div>");
	out.println("<br>");

	
		
	String id=rs1.getString("id_number");
	Statement str=conn.createStatement();
	ResultSet rs2;
	String status="select * from  scheduledata where id='"+id+"'";
	rs2=str.executeQuery(status);
	if(rs2.next())
	{
		out.println("<div class='row'> <div class='col-6'>");
		out.println("<label class=\"division1\">Date of Schedule:</label>");
		out.println("<input type=\"text\" id=\"status"+ i +"\" name=\"status"+ i +"\" value=\"" +rs2.getString("dos") + "\" readonly />");
        out.println("</div> <div class='col-6'>");
       out.println("<span class=\"text-right\">"+"<label>Time of Schedule:</label>"+"<input type=\"text\" id=\"statustime"+ i +"\" name=\"statustime"+ i +"\"value=\"" +rs2.getString("timeslot") + "\" readonly />"+"</span>");
       out.println("</div></div>");
       out.println("<input  type=\"submit\"  value=\"Re-Schedule\" class=\"submit reschedule\" name=\"submitit\" id=\"submit\">");
        
	}
else{
        out.println("<div class='row'> <div class='col-6'>");
		out.println("<label class=\"division2\">Status of Schedule:</label>");
        out.println("<input type=\"text\"  id=\"nodata"+ i +"\" name=\"nodata"+ i +"\" value=\"" +"Not Scheduled" + "\" readonly />");
        out.println("</div></div>");
        out.println("<input  type=\"submit\"   value=\"Schedule\" class=\"submitit schedule\" name=\"submit\" id=\"submit\">");
        
	}

out.println("</div>");
out.println("</form>");
out.println("<br>");
	
}

if(j!=4)
{
	out.println("<form action=\"addmdetails.jsp\">");
	out.println("<input type=\"submit\" value=\"+Add Member\" class=\"submitit\" id=\"submitit\" name=\"submitit\">");
	out.println("</form>");
}
else
{
	out.println("<p style=\"padding-left:400px;font-size:30px;color:red;font-weight:50px;\">Can't add more than 4 members</p>");
}
}%>

</div>
</div>
</div>

<script>
function change()
{
	document.getElementbyId(".submit").value="Re-Schedule";
	}
    $(document).ready(function(){
    $("#submitit").on('click', function(){
   	window.href.location="addmember.jsp";
    	$(".contentTab").show();
    	$(".contentTab").append( );
    	
    
    });
    $("input").click(function() {
        $(".submit").prop("value", "Re-Schedule");
    });
    $("#submit").on('click', function(){
    	window.href.location="selectplace.html";
    });
    });
    </script>
	<div style="background:#0d8ebd;padding:20px;margin-left:-120px;margin-right:-112px"">
		<p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
	</div>
</body>
</html>
