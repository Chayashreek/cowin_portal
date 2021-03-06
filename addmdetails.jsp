<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--<link rel="stylesheet" href="style2.css">-->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- css -->
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
 <style>
        .details{
            /*padding-left: 200px;*/
            background-color: #EDF6E5;
            color:#21094E;
        
        }
        .container{
            margin-top: 50px;
            width: 500px;
            background-color: #fff;
            padding-top: 0px;
            padding-bottom: 20px;
        }
        .addbtn{
            border-radius: 4px;
            background-color: #511281;
            border-width: 0px;
            width: 150px;
            height: 40px;
            color: #fff;
        }
        .photo{
                padding-right: 25px;
        }
        .Select {
            width: 188px;
            height: 30px;
        }
        .proof_select{
            padding-left: 30px;
        }
        .year{
            padding-right: 60px;
        }
        .ddlYears{
            width: 180px;
            height: 30px;
        }
        .intro-content{
            padding-top: 20px;
        }
     </style>
<body class="details"id="page-top" data-spy="scroll" data-target=".navbar-custom">
    
	
		
		
    
    <div class="intro-content">
        
    <form action="insertdetails.jsp" method="post" class="form-action,container">
        <div class="container">
            <a href="validateuser.jsp">
                <legend style="">
                     <button type="submit" class="addbtn btn-primary" style="margin-top: -7px;margin-left:460px;height:45px;border-radius: 25px;width:45px;" >
                        <a href="validateuser.jsp"><i class="fa fa-arrow-left" style="font-size:24px;color:#ffff;float:left;margin-top:5px;margin-left:0px;"></i></a>   
                     </button>
                </legend>
            </a>
            <center>
            <h3 >Member Details</h3>
            <hr>
            <label><b class="photo">Photo ID Proof</b></label>
            
    <select placeholder="Select" name="Select" id="Select" class="Select  proof_select" required >
     <option >Select </option>
        <option  value="Aadaar">Aadaar Card</option>
        <option  value="Pan">Pan Card</option>
      
        <option  value="vote">Voter Id Proof</option>
    </select>
    <br>
    <br>
    <label ><b>Photo ID Number</b></label>
    <!--<br>-->&nbsp;
    <input type="text" id="id_number" name="id_number" onblur="Validate_proof();" required />
    
    <br>
    <br>
    <label  style="padding-right:90px;"><b>Name</b></label>
    <!--<br>-->&nbsp;
    <input placeholder="Enter Name" type="text" class="inp" name="uname"  id="uname" required >
    <br>
    <br>
    <label style="padding-right:70px;" ><b>Gender</b></label>
    <!--<br>-->
    &nbsp;
    <input type="radio" name="gender" id="gender" value="male"  style="color:white" required>
    <label class="gender">Male</label>&nbsp;
    <input type="radio" name="gender" id="gender" value="female" style="color:white" required>
    <label class="gender">Female</label>&nbsp;
    <input type="radio" name="gender" id="gender" value="other" style="color:white" required>
    <label class="gender">Others</label>
    
    <br>
    <br>
    <label  class="year" style="padding-right:55px;"><b>Year or Birth </b></label>
   
    <select id="ddlYears" name="ddlYears" class="ddlYears" style="width:180px;"></select>
    <br>
    <hr class="htext">
    <center><input type="submit" class="sbtn addbtn btn-primary" name="Add member" value="Add Member"></center>
            </center>
    </div>
    </form>
</div>
    <!-- <%
String num=(String)session.getAttribute("mobile_num");
session.setAttribute("mobile_num", num);
%> -->
   <script type="text/javascript">
    window.onload = function () {
//Reference the DropDownList.
        var ddlYears = document.getElementById("ddlYears");
 
        //Determine the Current Year.
        var currentYear = (new Date()).getFullYear();
 
        //Loop and add the Year values to DropDownList.
        for (var i = 1900; i <= (currentYear-18); i++) {
            var option = document.createElement("OPTION");
            option.innerHTML = i;
            option.value = i;
            ddlYears.appendChild(option);
        }
    };


    function Validate_proof() {
     var proof = document.getElementById("Select").value;
     //alert(aadhar1);
     var id_num = document.getElementById("id_number").value;
        if(id_num!==""){    
            if(proof==="Aadaar")
            {

                  var adharcardTwelveDigit = /^\d{12}$/;
                  var adharSixteenDigit = /^\d{16}$/;
                      if (id_num.match(adharcardTwelveDigit)) {
                         //alert("valid");
                      }
                      else if (id_num.match(adharSixteenDigit)) {
                       //alert("valid");
                      }
                      else {
                          alert("Enter valid Aadhar Number");

                      }
            }
            else if(proof==="Pan"){
                     var regex_pan = /[A-Z]{5}[0-9]{4}[A-Z]{1}$/; 
                      if (id_num.match(regex_pan)) {
                         //alert("valid");
                      }
                      else {
                          alert("Enter valid Pan Number");
                      }
            }
            else if(proof==="vote")
            {
                 var regex_vote = /^([a-zA-Z]){3}([0-9]){7}?$/g;
                      if (id_num.match(regex_vote)) {
                         //alert("valid");
                      }
                      else {
                          alert("Enter valid Voter-Id Number");
                      }
            }
        }
    }
    
  
    
</script>

	
		
    <div style="background:#0d8ebd;padding:20px;margin-left:-120px;margin-right:-112px"">
        <p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
 </div>

</body>
</html>
