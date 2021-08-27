<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

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
<style>
	.btn{
		margin-left: 40%;
		margin-top: 15%;
		margin-bottom: 25%;
		background-color: white;
		color: black;
		padding: 7px;
		font-size: 14px;
		border-color:black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	
	.addmember{
		border-style: groove;
		margin: 100px;
	}
	
	
	
</style>
</head>
<!-- <body class="addmember" background="" > -->

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
              
              
            </div>
          </div>
        </div>
        <div class="container navigation">
        
          <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
              <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="index.html">
              <img src="logo1.jpeg" alt="" width="150" height="40" />
            </a>
          </div>
    
    
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
            <li class="active"><a href="fristpage.html">HOME</a></li>
            <li><a href="index.html">REGISTER/SIGN IN</a></li>
            <li><a href="project/templates/index.html">CHAT</a></li>
            
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
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item " role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Schedule Vaccination</button>
  </li>
  <li class="nav-item " role="presentation">
    <button class="nav-link" id="question-tab" data-bs-toggle="tab" data-bs-target="#question" type="button" role="tab" aria-controls="profile" aria-selected="true"><a href="http://127.0.0.1:5000/chat" target="_blank">ChatHere</a></button>
  </li>
  <li class="nav-item " role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Tab 3</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="about-tab" data-bs-toggle="tab" data-bs-target="#about" type="button" role="tab" aria-controls="about" aria-selected="false">Tab 4</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
  <form action="addmdetails.jsp" method="post">
		<input type="submit" value="+Add Member" class="btn" name="btn" id="btn">
	</form>
  </div>
  <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">Hello</div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">Good</div>
  <div class="tab-pane fade" id="about" role="tabpanel" aria-labelledby="about-tab">Good</div>
</div>
<%

String num=(String)session.getAttribute("mobile_number");
session.setAttribute("mobile_number", num);
out.println(num);

%>
	
</body>
</html>