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
<link rel="stylesheet" href="css/external.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

</head>

<% 
		Cookie[] allCookies = request.getCookies();
		if(allCookies != null) {
			for(Cookie cookie : allCookies) {
				String name = cookie.getName();
				if(name.equals("customer")) {
					String cValue = cookie.getValue();
					
					session.setAttribute("EMAIL", cValue);
					
					response.sendRedirect("logged");
					
					break;
				}
			}
		}
	%>

<body>


	<div class="row" id="navi">
		<div class="col-md-4" style="text-align: center">
			<b>Contact Us on +91 94520 56704</b>
		</div>
		<div class="col-md-8" style="text-align: right">


			<div class="col-md-2"></div>
			<div class="col-md-2">
				<span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;SIGN
				IN
			</div>
			<div class="col-md-2">
				<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;SIGN
				UP
			</div>

			<div class="col-md-2">
				<i class="fab fa-facebook"></i>&nbsp;&nbsp; <i
					class="fab fa-google-plus"></i>&nbsp;&nbsp; <i
					class="fab fa-twitter"></i>&nbsp;&nbsp; <span
					class="glyphicon glyphicon-envelope"></span>
			</div>
		</div>
	</div>
	<!-- 1st navigation bar -->
<%@ include file="index12.html" %>

	<div class="row" id="header">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<div class="justify-content-start">
				<h3>
					<b>NEW ACCOUNT/SIGN IN</b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="#">HOME</a></li>
					<li class="breadcrumb-item"><a href="#">NEW ACCOUNT</a></li>
					<li class="breadcrumb-item active" aria-current="page"><a
						href="#">SIGN IN</a></li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumb navigation -->


	
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<hr>
				<h3><b>NEW ACCOUNT</b></h3>
				<h4 style="color: #696969;">Not our registered customer yet?</h4>
				<br>
				<h5 style="color: #696969;">with registration with us new world of fashion,
					fantastic discounts and much more opens to you! The whole process
					will not take you more than a minute!</h5>
				<br>
				<h5 style="color: #A9A9A9">
					if you have any question, please feel free to <a href="#"
						style="color: #20B2AA">contact us</a>, our customer care service
					center is working for you 24/7.
				</h5>
				<hr>
				<%
				 if(session.getAttribute("logout")!= null && ((Boolean)session.getAttribute("logout")) == true)
				 {
				%>
				<div class="alert alert-success">
					<strong>Success!</strong> logout successful.
				</div>
				<%
  session.removeAttribute("logout");
				 }
%>

				<%
				 if(session.getAttribute("registration")!= null && ((Boolean)session.getAttribute("registration")) == true)
				 {
				%>
				<div class="alert alert-success">
					<strong>Success!</strong> Registration successful.
				</div>
				<%
  session.removeAttribute("registration");
				 }
%>
				<form action="register" style="color: #A9A9A9">
					<div class="form-group">
						<label for="name">Name &nbsp;<span id="result" style="background-color: red; color:#ffffff;"></span></label> <input type="text"
							class="form-control Validate" id="name" name="f1" onfocusout="namevalidation()">
					</div>
					<div class="form-group">
						<label for="email">Email&nbsp;<span id="result1" style="background-color: red; color:#ffffff;"></span></label> <input type="email"
							class="form-control" id="email" name="f2" onfocusout="emailvalidation('email','result1',0)">
					</div>
					<div class="form-group">
						<label for="pwd">Password &nbsp;<span id="result2" style="background-color: red; color:#ffffff;"></span></label> <input type="password"
							class="form-control" id="pwd" name="f3" onfocusout="passwordvalidation('pwd','result2',0)">
					</div>
					<p style="text-align: center">
						<button class="button button1" disabled id="btn1">
							<span class="glyphicon glyphicon-user"></span>&nbsp;Register
						</button>
					</p>

				</form>
				<!-- 1st form -->
				<hr>
			</div>

			<div class="col-md-1"></div>

			<div class="col-md-4">
				<hr>
				<h3><b>SIGN IN</b></h3>
				<h4 style="color: #696969;">Already our customer?</h4>
				<br>

				<h5 style="color: #696969;">Get access to your orders, Wishlist and
					Recommendations.</h5>

				<%
				 if(session.getAttribute("is_logged_in")!= null && ((Boolean)session.getAttribute("is_logged_in")) == false)
				 {
				%>

				<div class="alert alert-danger">
					<strong>Danger!</strong> Indicates a dangerous or potentially
					negative action.
				</div>
				<%
  session.removeAttribute("is_logged_in");
				 }
%>
				<hr>
				<form action="logged" method="post" style="color: #A9A9A9">
					<div class="form-group">
						<label for="email">Email  &nbsp;<span id="result3" style="background-color: red; color:#ffffff;"></span></label> <input type="email"
							class="form-control" id="email1" name="f1" onfocusout="emailvalidation('email1','result3',1)">
					</div>
					<div class="form-group">
						<label for="pwd">Password &nbsp;<span id="result4" style="background-color: red; color:#ffffff;"></span></label> <input type="password"
							class="form-control" id="pwd1" name="f2" onfocusout="passwordvalidation('pwd1','result4',1)">
					</div>
					Stay Signed In<input type="checkbox" name="f3" value="yes"/>
					<p style="text-align: center">
						<button class="button button1" id="btn2" disabled>
							<span class="glyphicon glyphicon-log-in"></span>&nbsp;LOG IN
						</button>
					</p>
				</form>
				<hr>
			</div>

			<div class="col-md-1"></div>
		</div>
		<!-- 2nd form -->
	<%@ include file="footer.html"%>
	
	
	<script src="js/external.js"></script>
	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>