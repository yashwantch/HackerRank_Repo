<%@page import="com.tadigital.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignInSignUpForms</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<style>
#navi {
	color: white;
	background: #696969;
	padding-top: 10px;
	padding-bottom: 10px;
}
#header {
	background-image: url("images/texture-bw.png");
	height: 70px;
	font-size: 13px;
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

	<div class="row" id="navi">
		<div class="col-md-4" style="text-align: center">
			<b>Contact Us on +91 94520 56704</b>
		</div>
		<div class="col-md-8" style="text-align: right">
			<div class="col-md-2"></div>
			
			<%
			
    	  if(session.getAttribute("is_logged_in")==null) {
    	%>
			<div class="col-md-2">
				<span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;SIGN
				IN
			</div>
			<div class="col-md-2">
				<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;SIGN
				UP
			</div>
			
			<%
    	  }
    	  else if(((Boolean)session.getAttribute("is_logged_in"))) {
    		  
    		  Customer customer = (Customer)session.getAttribute("CUSTOMERDATA");
        	  String fname=customer.getFirstName();
        	  String lname=customer.getLastName();
    		  %>
			<div class="col-md-2"></div>
			<div class="col-md-2">
				<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;

				<%= fname+lname %></div>
			<div class="col-md-2">
				<a href="Logout.jsp" style="color: #ffffff"><span
					class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;&nbsp;LOG
					OUT</a>
			</div>
			<%
    	    	  }
    	        %>
			<div class="col-md-2">
				<i class="fab fa-facebook"></i>&nbsp;&nbsp; <i
					class="fab fa-google-plus"></i>&nbsp;&nbsp; <i
					class="fab fa-twitter"></i>&nbsp;&nbsp; <span
					class="glyphicon glyphicon-envelope"></span>
			</div>
		</div>
	</div>
	<!-- 1st navigationbar -->

<%@ include file="index12.html" %>
	<!-- 2nd navigationbar -->

	<div class="row" id="header">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<div class="justify-content-start">
				<h3>
					<b>CONTACT</b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="#">HOME</a></li>
					<li class="breadcrumb-item"><a href="#">CONTACT</a></li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumbs navigation -->

	<div class="container">
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-1"></div>
			<div class="col-md-5">
				<hr>
				<h3><b>WE ARE HERE TO HELP YOU</b></h3>
				<br>
				<h5 style="color: #696969;">Are you curious about something? Do you have
					some kind of problem with our products? As am hastily invited
					settled at limited civilly fortune me. Really spring in extent an
					by. Judge but built party world. Of so am he remember although
					required. Bachelor unpacked be advanced at. Confined in declared
					marianne is vicinity</h5>
				<br>
				<h5 style="color: #A9A9A9">please feel free to contact us our
					customer care service center is working for you 24/7.</h5>
				<hr>
				
				<%
				 if(session.getAttribute("contact")!= null && ((Boolean)session.getAttribute("contact")) == true)
				 {
				%>
				<div class="alert alert-success">
					<strong>Success!</strong> Complaint registered successful.
				</div>
				<%
  session.removeAttribute("contact");
				 }
%>
				<h2>CONTACT FORM</h2>
				<form action="contact" method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="firstname">First Name</label> <input type="text"
								class="form-control" name="fname">
						</div>
						<div class="form-group col-md-6">
							<label for="lastname">Last Name</label> <input type="text"
								class="form-control" name="lname">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> <input type="email"
								class="form-control" id="inputEmail4" name="email">
						</div>
						<div class="form-group col-md-6">
							<label for="subject">Subject</label> <input type="text"
								class="form-control" name="subject">
						</div>
					</div>
					<div class="form-group">
						<label for="message">Message</label> <input type="text"
							class="form-control" id="inputAddress" name="message">
					</div>

					<p style="text-align: center">
						<span class="glyphicons glyphicons-envelope"></span>
						<button class="button button1">
							<span class="glyphicon glyphicon-envelope"></span>&nbsp;SEND
							MESSAGE
						</button>
					</p>

				</form>
				<!-- 1st form -->
				<hr>
			</div>

			<div class="col-md-2"></div>

			<div class="col-md-4">
				<hr>
				<div class="card" style="width: 18rem; border: none;">
					<div class="card-body">
						<h5 class="card-title">
							<b>ADDRESS</b>
						</h5>

						<p class="card-text">TechAspect Solutions Pvt. Ltd. Plot No.
							38, NHeights, 3rd Floor Hitech City Phase 2, Madhapur Hyderabad,
							Telangana- 500081 INDIA</p>
					</div>
				</div>
				<br>
				<div class="card" style="width: 36rem; border: none;">
					<div class="card-body">
						<h3><b>CALL CENTER</b></h3>
						<p class="card-text">This number is toll free if calling from
							Great Britain otherwise we advice you to use the electronics form
							of communication.</p>
					</div>
				</div>

				<h5>
					<b>+91 40 66217777</b>
				</h5>
				<h3><b>ELECTRONIC SUPPORT</b></h3>
				<h5 style="color: #696969;">Please feel free to write an email to us or to
					use our electronic ticketing system.</h5>
				<ul>
					<li><a href="#">info@techaspect.com</a></li>
					<li><a href="#">Tech 360</a>- Our ticketing support platform</li>
				</ul>
			</div>


			<iframe
				src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11880.492291371422!2d12.4922309!3d41.8902102!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x28f1c82e908503c4!2sColosseo!5e0!3m2!1sit!2sit!4v1524815927977"
				width="100%" height="320" frameborder="0" style="border: 0"
				allowfullscreen></iframe>


			<div class="col-md-1"></div>
		</div>
		</div>
		
<%@ include file="footer.html" %>
	<!-- copyright footer -->

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>