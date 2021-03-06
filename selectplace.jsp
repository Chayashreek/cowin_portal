<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>States</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>
    <script src="state.js"></script>
    <link id="t-colors" href="color/default.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="style.css" rel="stylesheet">
	
    <!-- css -->
    
</head>
<body background="white">
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
	<div class="intro-content">
	<div class="container mt-5">
    <div class="form-group row">
    	<div class="col-sm-5">
        <label class="fw-bold" for="stateDropdown">Select State</label>
        <div>
        <select class="form-select" id="stateDropdown">
            <option selected>Open this select menu</option>
          </select>
          </div>
          </div>

      <div id="div2" class="form-group col-sm-5">
            <label class="fw-bold"  for="districtDropdown">Select Disctrict</label>
            <div >
            <select class="form-select" id="districtDropdown">
                <option selected>Open this select menu</option>
              </select>
            </div>
            <input class="but btn-dark mt-5" type="submit"  value="submit" name="search" id="btn">
      </div>
      </div>
          
         

            <table class="table-bordered table mt-5" id="tableCreate">
            
        </table>
	</div>
</div>
   <script>
   $(document).ready(function()
		   {
		       console.log("loaded");
		       var state =$("#stateDropdown");
		       var district=$("#districtDropdown");
		       var btn=$('#btn');
		       var id=0;
		       //call API

		       $.ajax({
		           url:"https://cdn-api.co-vin.in/api/v2/admin/location/states",
		           success:function(results){
		               console.log(results.states);
		               console.log(results.states[0]);
		               $.each(results.states, function(key,value){
		                   state.append('<option value=' + value.state_id + '>' +value.state_name+ '</option>');            })
		           }
		       });

		       $('#stateDropdown').change(function(){
		            var stateId=$(this).val();
		           console.log("stateId: "+ stateId);

		       $.ajax({
		           url:"https://cdn-api.co-vin.in/api/v2/admin/location/districts/" + stateId,
		           success: function(results)
		           {
		               console.log(results.districts);
		               district.empty();
		               $.each(results.districts, function(key,value){
		                   district.append('<option value=' + value.district_id + '>' +value.district_name+ '</option>');})
		           }
		       });
		   });



		   var hos=$('#tableCreate');

		   $('#btn').click(function()
		   {
		       var district=$('#districtDropdown').val();
		           console.log(district);
		           var d=new Date();
		           var today_date=d.getDate();
		       $.ajax({
		           url:"https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByDistrict?district_id="+district+"&date="+today_date,
		           success: function(results)
		           {
		               hos.empty();
		                   hos.append('<thead class="table-dark">');
		                   hos.append('<th class="p-3 border" scope="col"> SL. NO.</th>');     
		                   hos.append('<th class="p-3 border" scope="col"> NAME</th>');
		                   hos.append('<th class="p-3 border" scope="col"> CENTER ID</th>');
		                   hos.append('<th class="p-3 border" scope="col"> AVAILABILITY OF DOSE 1</th>');
		                   hos.append('<th class="p-3 border" scope="col"> AVAILABILITY OF DOSE 2</th>');
		                   hos.append('<th class="p-3 border" scope="col"> AVAILABILITY OF CAPACITY</th>');
		                   hos.append('<th class="p-3 border" scope="col"> FEE</th>');
		                   hos.append('<th class="p-3 border" scope="col"> MINIMUM AGE</th>');
		                   hos.append('<th class="p-3 border"  scope="col"> VACCINE</th>');
                           hos.append('<th class="p-3 border" scope="col"> SLOTS</th>');
                           hos.append('<th class="p-3 border" scope="col"> Book here</th>');
		                   hos.append('</thead>');
		               $.each(results.sessions, function(key,value){
		                   id=id+1;
		                   hos.append('<tr>');
		                   hos.append('<td class="p-3 border">'+ id + '</td>');
		                   hos.append('<td class="p-3 border" value='+value.name+'>'+value.name+'</td>');
                           hos.append('<td class="p-3 border" value='+value.center_id+'>'+value.center_id+'</td>');
		                   hos.append('<td  class="p-3 border" value='+value.available_capacity_dose1+'>'+value.available_capacity_dose1+'</td>');
		                   hos.append('<td  class="p-3 border" value='+value.available_capacity_dose2+'>'+value.available_capacity_dose2+'</td>');
		                   hos.append('<td  class="p-3 border" value='+value.available_capacity+'>'+value.available_capacity+'</td>');
		                   hos.append('<td  class="p-3 border" value='+ value.fee+'>'+value.fee+'</td>');
		                   hos.append('<td  class="p-3 border" value='+ value.min_age_limit+'>'+value.min_age_limit+'</td>');
		                   hos.append('<td  class="p-3 border" value='+value.vaccine+'>'+value.vaccine+'</td>');
                           hos.append('<td   class="p-3 border" value='+value.slots+'>'+value.slots+'</td>');
                           hos.append('<td><input type="submit" class="btn btn-primary mt-5 book" value="book"  name="book"></td>');
		                   hos.append('</tr>');
		                  
		               })
		               id=0;
		               $('.book').on('click',function(){
		    			   window.location.href="schedulepage.html";
		    		   });
		           }
		   });
		   });
		  
		   });
   
   </script>
  
	
		
<div style="background:#03256c;margin-top:100px;padding:20px;margin-left:-120px;margin-right:-112px"">
		<p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
 </div>

</body>
</html>