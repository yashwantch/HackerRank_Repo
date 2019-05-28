<%@page import="com.tadigital.entity.Customer"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>SignInSignUpForms</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<style>
			#navbar1{	
				color:white;
				background:	#696969;
				padding-top: 10px;
    			padding-bottom: 10px;
			}
			#header{
				background-image: url("images/texture-bw.png");
				height:70px;
				font-size:13px;
				padding-top: 15px;
			}
			
			.button {
    			background-color: #4CAF50;
    			border: none;
    			color: white;
    			padding: 5px 13px;
    			text-align: center;
    			text-decoration: none;
    			display: inline-block;
    			font-size: 15px;
    			margin: 2px 2px;
    			cursor: pointer;
			}

			.button1 {
    			background-color: white; 
    			color: #20B2AA;
    			border: 2px solid #20B2AA;
			}
		</style>
		
	</head>
<body>
<div class="row" id="navbar1">
    		<div class="col-md-4" style="text-align:center"><b>Contact Us on +91 94520 56704</b></div>
    		<div class="col-md-8" style="text-align:right">
    		<div class="col-md-2"></div>
    		
    		<%
			Customer customer = (Customer)session.getAttribute("CUSTOMERDATA");
    	  String sfname=customer.getFirstName();
    	  String slname=customer.getLastName();
    	  if(session.getAttribute("is_logged_in")==null) {
    	%>
    			
    			<div class="col-md-2" ><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;SIGN IN</div>
    			<div class="col-md-2" ><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;SIGN UP</div>
    			<%
    	  }
    	  else if(((Boolean)session.getAttribute("is_logged_in"))) {
    		  %>
    	        <div class="col-md-2"></div>
    	        <div class="col-md-2">
    	        <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;
    	        
    	        <%= sfname+slname %></div>
    	        <div class="col-md-2" ><a href="Logout.jsp" style="color:#ffffff"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;&nbsp;LOG OUT</a></div>
    	        <%
    	    	  }
    	        %>
    			<div class="col-md-2" >
    			   <i class="fa fa-facebook"></i>&nbsp;&nbsp;
    			   <i class="fa fa-google-plus"></i>&nbsp;&nbsp;
    			   <i class="fa fa-twitter"></i>&nbsp;&nbsp;
    			   <span class="glyphicon glyphicon-envelope"></span>
    			</div>
    			
    			
    		</div>
        </div>
<!-- 1st navbar -->
        
       <%@ include file="index12.html" %>
<!-- 2nd navbar -->
        
     
	<div class="row" id="header">
	<div class="col-md-2"></div>
         <div class="col-md-4">
         <div class="justify-content-start">
         <h3><b>MY ACCOUNT</b></h3>
         </div>
         </div>
         <div class="col-md-5">
        	<nav aria-label="breadcrumb">
  				<ol class="breadcrumb justify-content-end" style="background:none;">
    				<li class="breadcrumb-item"><a href="CustomerHomePage.jsp">HOME</a></li>
    				<li class="breadcrumb-item"><a href="#">MY ACCOUNT</a></li>
  				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div> 	
	</div>
<!-- breadcrumbs -->
 
    <div class="row" style="margin-top: 50px;">
		<div class="col-md-2"></div>
		<div class="col-md-5">
        	<h4 style="color: #696969;">Change your personal details or your password here.</h4>
        	<br>
        	<h5 style="color: #A9A9A9">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</h5>
        	<br>
        	<hr>
        	<h3><b>CHANGE PASSWORD</b></h3>
        	<hr align="left" width=20% color="#00cc99">
        	<%
				 if(session.getAttribute("passwordchange")!= null && ((Boolean)session.getAttribute("passwordchange")) == true)
				 {
				%>
        	<div class="alert alert-success">
  <strong>Success!</strong> password change successful.
</div>
<%
  session.removeAttribute("passwordchange");
				 }
%>
<%
				 if(session.getAttribute("passwordchange")!= null && ((Boolean)session.getAttribute("passwordchange")) == false)
				 {
				%>
        	<div class="alert alert-warning">
  <strong>Warning!</strong> Incorrect password.
</div>
<%
  session.removeAttribute("passwordchange");
				 }
%>
		<form action="change" method="post">
        	<div class="form-group">
				<label for="pwd">Old password</label>
				<input type="password"class="form-control" id="pwd" name="password">
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="npwd">New password</label>
					<input type="password"class="form-control" name="npassword" id="npwd">
				</div>
				<div class="form-group col-md-6">
					<label for="rnpwd">Retype New password</label>
					<input type="password"class="form-control" name="rnpassword" id="rnpwd">
				</div>
			</div>
				<p style="text-align: center">
					<button class="button button1">
						<span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;SAVE NEW PASSWORD
					</button>
				</p>
		</form>
<!-- 1st form -->
				<hr>
		<div class="row">&nbsp;</div>
			<h3><b>PERSONAL DETAILS</b></h3>
				<hr align="left" width=18% color="#00cc99">
				<%
				 if(session.getAttribute("detailsupdated")!= null && ((Boolean)session.getAttribute("detailsupdated")) == true)
				 {
				%>
        	<div class="alert alert-success">
  <strong>Success!</strong> details updation successful.
</div>
<%
  session.removeAttribute("detailsupdated");
				 }
%>
				
				<%
				
					int id1=customer.getId();
					String fname=customer.getFirstName();
					String lname=customer.getLastName();
					String contact=customer.getContact();
					String email=customer.getEmail();
				%>
				
		<form action="update" method="post">
  			<div class="form-row">
    			<div class="form-group col-md-6">
      				<label for="fname">First Name</label>
      				<input type="text" class="form-control" id="fname" value=<%=fname%> name="f1">
    			</div>
    			<div class="form-group col-md-6">
      				<label for="lname">Last Name</label>
      				<input type="text" class="form-control" id="lname" value=<%=lname%> name="f2">
    			</div>
  			</div>
  			<div class="form-group">
  					<label for="gender">Gender</label>
  				<div class="radio">
      				<label><input type="radio" name="optradio" checked>Male</label>
    			</div>
    			<div class="radio">
      				<label><input type="radio" name="optradio">Female</label>
    			</div>
    			<div class="radio">
      				<label><input type="radio" name="optradio">Transgender</label>
    			</div>
    		</div>
  			<div class="form-group">
    			<label for="inputAddress">Address</label><br>
    			<textarea class="form-control" rows="4" cols="80" name="f3"></textarea>
  			</div>
  			<div class="form-row">
    			<div class="form-group col-md-3">
      				<label for="inputCity">City</label>
      				<input type="text" class="form-control" id="inputCity" name="f4">
    			</div>
    			<div class="form-group col-md-3">
      				<label for="inputZip">Zip</label>
      				<input type="text" class="form-control" id="inputZip" name="f5">
    			</div>
    			<div class="form-group col-md-3">
      				<label for="inputState">State</label>
      				<select id="inputState" class="form-control" name="f6">
        				<option selected>Telangana</option>
        				<option>AP</option>
      				</select>
    			</div>
    			<div class="form-group col-md-3">
      				<label for="inputState">Country</label>
      				<select id="inputState" class="form-control" name="f7">
        				<option selected>India</option>
        				<option>US</option>
      				</select>
    			</div>
 				</div>
 			<div class="form-row">
    			<div class="form-group col-md-6">
      				<label for="contnumber">Contact Number</label>
      				<input type="tel" class="form-control" id="contnumber" value=<%= contact %> name="f9">
    			</div>
    			<div class="form-group col-md-6">
      				<label for="emailid">Email</label>
      				<input type="email" class="form-control" id="emailid" value=<%= email %> name="f10">
    			</div>
  			</div>
  				<p style="text-align: center">
					<button class="button button1">
							 <span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;SAVE CHANGES
					</button>
				</p>
		</form>
<!-- second form -->
		</div>
<!-- class md5 -->
        <div class="col-md-1"></div>
        <div class="col-md-3">
        		<h3><b>CUSTOMER SECTION</b></h3>
        		<hr align="left" width=40% color="#00cc99">
        	<div class="row">
        		<a href="CustomerOrders.jsp" class="btn btn-info btn-lg" style="color:#20B2AA;background-color:#ffffff;font-size:1.2em;border:none;">
          			<span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;My orders
        		</a>
        	</div>
        	<div class="row">
        		<a href="CustomersWishList.jsp" class="btn btn-info btn-lg"style="color:#20B2AA;background-color:#ffffff;border:none;font-size:1.2em;">
          			<span class="glyphicon glyphicon-heart"></span>&nbsp;My Whishlist
        		</a>
        	</div>
        	<div class="row">
        		<a href="#" class="btn btn-info btn-lg"style="color:#ffffff;background-color:#20B2AA;border:none;font-size:1.2em;">
          			<span class="glyphicon glyphicon-user"></span>&nbsp;My account 
        		</a>
        	</div>
        	<div class="row">
        		<a href="Logout.jsp" class="btn btn-info btn-lg"style="color:#20B2AA;background-color:#ffffff;border:none;font-size:1.2em;"">
          			<span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout
        		</a>
        	</div>
        </div>	
        <div class="col-md-2"></div>
	</div>
<%@ include file="footer.html" %>
    
	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>