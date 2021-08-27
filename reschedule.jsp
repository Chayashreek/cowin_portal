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
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root","Nanditha@06");
Statement st=conn.createStatement();
String query = "delete * from schedule0";
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
	out.println("</br>");
}
%>

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
    
    });
    });
    </script>


</body>
</html>