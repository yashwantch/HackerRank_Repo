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
			Customer customer = (Customer)session.getAttribute("CUSTOMERDATA");
    	  String fname=customer.getFirstName();
    	  String lname=customer.getLastName();
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
					<li class="breadcrumb-item"><a href="CustomerHomePage.jsp">HOME</a></li>
					<li class="breadcrumb-item">MY ORDERS</li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumb navigation -->


	<div class="container">
		<div class="row">
	

			<div class="col-md-9">
			<br><br>

				<h4 style="color: #A9A9A9">
					if you have any question, please feel free to <a href="#"
						style="color: #20B2AA">contact us</a>, our customer care service
					center is working for you 24/7.
				</h4>
				<br>
				<br>
				<hr>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Order</th>
							<th scope="col">Date</th>
							<th scope="col">Total</th>
							<th scope="col">Status</th>
							<th scope="col">view</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" style="border-top: 0;">#1735</th>
							<td>22/06/2013</td>
							<td>&#8377; 150.00</td>
							<td><span class="p-1 mb-2 bg-info text-white">BEING
									PREPARED</span></td>
							<td><a href="orderdetails"><button class="button button1">&nbsp;VIEW</button></a></td>
						</tr>
						<tr>
							<th scope="row" style="border-top: 0;">#1735</th>
							<td>22/06/2013</td>
							<td>&#8377; 150.00</td>
							<td><span class="p-1 mb-2 bg-info text-white">BEING
									PREPARED</span></td>
							<td><a href="orderdetails"><button class="button button1">&nbsp;VIEW</button></a></td>
						</tr>
						<tr>
							<th scope="row" style="border-top: 0;">#1735</th>
							<td>22/06/2013</td>
							<td>&#8377; 150.00</td>
							<td><span class="p-1 mb-2 bg-success text-white">RECEIVED</span></td>
							<td><a href="#"><button class="button button1">&nbsp;VIEW</button></a></td>
						</tr>
						<tr>
							<th scope="row" style="border-top: 0;">#1735</th>
							<td>22/06/2013</td>
							<td>&#8377; 150.00</td>
							<td><span class="p-1 mb-2 bg-danger text-white">CANCELLED</span></td>
							<td><a href="#"><button class="button button1">&nbsp;VIEW</button></a></td>
						</tr>
						<tr>
							<th scope="row" style="border-top: 0;">#1735</th>
							<td>22/06/2013</td>
							<td>&#8377; 150.00</td>
							<td><span class="p-1 mb-2 bg-warning text-dark">ON
									HOLD</span></td>
							<td><a href="#"><button class="button button1">&nbsp;VIEW</button></a></td>
						</tr>

					</tbody>
				</table>
			</div>
			<div class="col-md-3">
			<br><br>
				<h3><b>CUSTOMER SECTION</b></h3>
				<hr align="left" width=40% color="#00cc99">
				<div class="row">
					<a href="#" class="btn btn-info btn-lg"
						style="color: #ffffff; background-color: #20B2AA; font-size: 1.2em;">
						<span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;My
						orders
					</a>
				</div>
				<div class="row">
					<a href="CustomersWishList.jsp" class="btn btn-info btn-lg"
						style="color: #20B2AA; background-color: #ffffff; border: none; font-size: 1.2em;">
						<span class="glyphicon glyphicon-heart"></span>&nbsp;My Whishlist
					</a>
				</div>
				<div class="row">
					<a href="personal.jsp" class="btn btn-info btn-lg"
						style="color: #20B2AA; background-color: #ffffff; border: none; font-size: 1.2em;">
						<span class="glyphicon glyphicon-user"></span>&nbsp;My account
					</a>
				</div>
				<div class="row">
					<a href="Logout.jsp" class="btn btn-info btn-lg"
						style="color: #20B2AA; background-color: #ffffff; border: none; font-size: 1.2em;"">
						<span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout
					</a>
				</div>
			</div>

		</div>
	</div>
<%@ include file="footer.html" %>
	<!-- copyright footer -->

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>