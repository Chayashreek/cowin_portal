<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>States</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/forge/0.8.2/forge.all.min.js"></script>
    
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="plugins/cubeportfolio/css/cubeportfolio.min.css">
	<link href="css/nivo-lightbox.css" rel="stylesheet" />
	<link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">

    <link id="t-colors" href="color/default.css" rel="stylesheet">
    <style>
        .btn{
            margin-left: 50%;
            margin-top: 250px;
        }
        .box{
        
        background-color:white;
        padding-left: 25px;
        width: 1000px;
          }
          .mt-5{
              padding-left: 100px;
              margin-top: 3px;
          }
          h1{
              padding-top:0px;
          }
          .intro-content{
              padding-top: 60px;
          }
    </style>
    

<body >
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
    <div class="intro-content">
    <center>
<h1 style="color:#03256c;"><b>BOOK YOUR SLOTS!!</b></h1>
</center>

<div class="container mt-5">
<div class="box">
<div style="border:0px solid black;padding-left:50px;margin:10px;padding-bottom:20px;margin-top:90px;">

<form action="successscheduled.jsp" method="post">
<a href="validateuser.jsp"><i class="fa fa-arrow-left" style="font-size:24px;color:#03256c;float:left;margin-top:5px;margin-left:0px;"></i></a>
<br><br>
    <div class="row">
    <div class="form-group col-sm-5 ">
        <label class=" fw-bold" for="stateDropdown">Select State*</label>
        <div >
        <select class="form-select" name="stateform" id="stateDropdown">
            <option selected>Select</option>
          </select>
          </div>
      </div>
      <div class="form-group col-sm-5 ">
            <label class="fw-bold"  for="districtDropdown">Select District*</label>
            <div >
            <select class="form-select" name="districtform" id="districtDropdown">
                <option selected>Select</option>
              </select>
            </div>
      </div>
      <div class="form-group col-sm-1" >
        <!--  <input class="btn btn-dark mt-4 pr-3" type="submit"  value="submit" name="search" id="btn">-->
      </div>
    </div>
    <div class="row mt-5">
        <div class="form-group col-sm-3 ">
            <label class=" fw-bold" for="hosDropdown" style="color:#03256c">Select Hospital*</label>
            <div class="col-md-8">
            <select class="form-select" name="hosform" id="hosDropdown" style="border-radius:4px">
                <option selected>Select</option>
              </select>
              </div>
          </div>
          <div class="form-group col-sm-3 ">
            <label class=" fw-bold"  for="dateDropdown" style="color:#03256c">Select Date*</label>
            <div class="col-md-8">
            <input type="date" name="dateform" id="dateDropdown" style="border-radius:4px;padding:6px;" required>
            </div>
          </div>
          <div class="form-group col-sm-3" >
            <label class="fw-bold"  for="timeDropdown" style="color:#03256c">Select Time Slots*</label>
            <div class="col-md-6">
            <select class="form-select" name="timeform" id="timeDropdown" style="border-radius:4px">
                <option selected>Select</option>
              </select>
            </div>
          </div>
    </div>

    <input class="btn btn-dark  pr-3" style="background-color:#511281;margin-left:350px;margin-top:50px;" type="submit"  value="Schedule" name="schedule" id="btn">
    </form>
    </div>
   </div>
</div>
</div>
</div>
<div style="background:#03256c;padding:20px;margin-left:-120px;margin-right:-112px"">
    <p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
</div>
     <%
    String mobile_num = (String)session.getAttribute("mobile_num");
    session.setAttribute("mobile_num",mobile_num);
     out.println(mobile_num);
    String hidden = request.getParameter("hidden");
    String id_number = request.getParameter("name"+hidden);
    session.setAttribute("id_num", id_number);
    //session.setAttribute("id_num", id_number);
   %>
    
    <script>
    $(document).ready(function()
    		{
    		    console.log("loaded");
    		    var state =$("#stateDropdown");
    		    var district=$("#districtDropdown");
    		    var btn=$('#btn');
    		    var i=0;
    		    var hos=$('#hosDropdown');
    		    var dat=$('#dateDropdown');
    		    var slot=$('#timeDropdown');

    		    //call API

    		    $.ajax({
    		        url:"https://cdn-api.co-vin.in/api/v2/admin/location/states",
    		        success:function(results){
    		            console.log(results.states);
    		            $.each(results.states, function(key,value){
    		                state.append('<option value=' + value.state_id + '>' +value.state_name+ '</option>');   
    						       
    		            });
    		        }
    		    });

    		    $('#stateDropdown').change(function(){
    		         var stateId=$(this).val();
    		        console.log("stateId: "+ stateId);
    				stateval=$('#stateDropdown').find(":selected").text();
    				$.post(stateval);
    				console.log(stateval);
    		       

    		    $.ajax({
    		        url:"https://cdn-api.co-vin.in/api/v2/admin/location/districts/" + stateId,
    		        success: function(results)
    		        {
    		            console.log(results.districts);
    		            district.empty();
    		            $.each(results.districts, function(key,value){
    		                district.append('<option value=' + value.district_id + '>' +value.district_name+ '</option>');
    		         })
    		        
    		        }
    		    });
    		});
    		  $('#districtDropdown').change(function(){
    		      var districtId=$(this).val();
    		      console.log("district:"+districtId);
    				districtval=$('#districtDropdown').find(":selected").text();
    				console.log(districtval);
    		      var d=new Date();
    		    var today_date=d.getDate();
    		    $.ajax({
    		        url:"https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByDistrict?district_id="+districtId+"&date="+today_date,
    		        success: function(results)
    		        {
    		            console.log(results.sessions);
    		            hos.empty();
    		            $.each(results.sessions,function(key,value){
    		                hos.append('<option value='+value.name+'>'+value.name+'</option>');
    		            });
    		        }
    		    });

    		  });
    		  $('#dateDropdown').change(function(){
    		    var district=$('#districtDropdown').val();
    		    var dis=$(this).val();
    			hospital=$('#hosDropdown').find(":selected").text();
    			console.log(hospital);
    			
    		    var today=dis.split("-").reverse().join("-");
    		    console.log(today);
    		    $.ajax({
    		        url:"https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByDistrict?district_id="+district+"&date="+today,
    		        success: function(results)
    		        {
    		            slot.empty();
    		            $.each(results.centers,function(key,value)
    		            {
    		                $.each(value.sessions,function(key,value){

                                while( i < value.slots.length){
                                    slot.append('<option>'+value.slots[i]+'</option>');
                                     i++;
                                }
 
    		            });
    		        });
    				timeslot=$('#timeDropdown').find(":selected").text();
    			    console.log(timeslot);
    				
    		        }
    		    
    		    });
    		});


    		});

    </script>
    
    
	
		
		
	
</body>
</html>