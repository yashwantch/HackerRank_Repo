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

a {
	color: #696969;
	font-weight: bold;
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

#footer1 {
	background: #696969;
	color: white;
	padding-top: 50px;
}

#foo {
	padding-left: 0px;
	padding-right: 0px;
}
</style>



</head>


<% 
		Cookie[] allCookies = request.getCookies();
		if(allCookies != null) {
			for(Cookie cookie : allCookies) {
				String name = cookie.getName();
				if(name.equals("vendor")) {
					
					String cValue = cookie.getValue();
					
					session.setAttribute("EMAIL", cValue);
					
					response.sendRedirect("vendorlogin1");
					
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
				<i class="fab fa-facebook-f"></i>&nbsp;&nbsp; <i
					class="fab fa-google-plus"></i>&nbsp;&nbsp; <i
					class="fab fa-twitter"></i>&nbsp;&nbsp; <span
					class="glyphicon glyphicon-envelope"></span>
			</div>
		</div>
	</div>
	<!-- 1st navigation bar -->
<%@ include file="index12.html" %>
	<!-- 2nd navigation bar -->

	<div class="row" id="header">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<div class="justify-content-start">
				<h3>
					<b>MY ORDERS</b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="#">HOME</a></li>
					<li class="breadcrumb-item"><a href="#">MY ORDERS</a></li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumb navigation -->


	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
<div class="col-md-4">
<br>
<br>


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
				 if(session.getAttribute("is_logged_in")!= null && ((Boolean)session.getAttribute("is_logged_in")) == false)
				 {
				%>
				<div class="alert alert-danger">
					<strong>Danger!</strong> invalid credentials.
				</div>
				<%
  session.removeAttribute("logout");
				 }
%>
				<hr>
				<h3><b>SIGN IN</b></h3>
				<h4 style="color: #696969;">Already our customer?</h4>
				<br>
				<h5 style="color: #696969;">Get access to your products page.</h5>
				<hr>
				<form action="vendorlogin1" method="post" style="color: #A9A9A9">
					<div class="form-group">
						<label for="email">Email&nbsp;<span id="result3" style="background-color: red; color:#ffffff;"></span></label> <input type="email"
							class="form-control" id="email1" name="f1" onfocusout="emailvalidation('email1','result3',1)">
					</div>
					<div class="form-group">
						<label for="pwd">Password &nbsp;<span id="result4" style="background-color: red; color:#ffffff;"></span></label> <input type="password"
							class="form-control" id="pwd1" name="f2" onfocusout="passwordvalidation('pwd1','result4',1)">
					</div>
					<br><br>
			Stay Signed In<input type="checkbox" name="f3" value="yes"/>
					<p style="text-align: center">
						<button class="button button1" disabled id="btn2">
							<span class="glyphicon glyphicon-log-in"></span>&nbsp;LOG IN
						</button>
					</p>
				</form>
				<hr>
			</div>
			
		</div>
	</div>
<%@ include file="footer.html" %>
	<!-- copyright footer -->
	
	<script src="js/external.js"></script>
	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>