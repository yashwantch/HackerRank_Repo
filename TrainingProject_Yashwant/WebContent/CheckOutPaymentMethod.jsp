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
	padding: 5px 13px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 2px 2px;
	cursor: pointer;
	background-color: white;
	color: #20B2AA;
	border: 2px solid #20B2AA;
}
.table td {
	max-width: 250px;
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
	<!-- 1st navigation bar -->
	<%@ include file="index12.html" %>
	<!-- 2nd navigation bar -->

	<div class="row" id="header">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<div class="justify-content-start">
				<h3>
					<b>CHECKOUT - PAYMENT METHOD</b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="CustomerHomePage.jsp">HOME</a></li>
					<li class="breadcrumb-item">CHECKOUT-PAYMENT
							METHOD</li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumb navigation -->


	<div class="container">
		<div class="row" style="margin-top: 50px;">

			<div class="col-md-9">
				<hr>

				<ul class="nav nav-pills nav-fill"
					style="border-bottom: 1px solid; color: #4fbfa8;">
					<li class="nav-item"><a class="nav-link" href="#"
						style="color: #20B2AA;"><span
							class="glyphicon glyphicon-map-marker"></span><br>Address</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="color: #20B2AA;"><i class="fas fa-truck"></i><br>Delivery
							Method</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="color: #ffffff; background-color: #20B2AA;"><i
							class="fas fa-money-bill"></i><br>Payment Method</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="color: #20B2AA;"><span
							class="glyphicon glyphicon-eye-open"></span><br>Order Review</a>
					</li>
				</ul>
				<br>
				<br>

				<div class="row">
					<div class="col-md-6">
						<div class="card"
							style="width: 400px; border-bottom: none; border-left: none; border-right: none">

							<div class="card-body">
								<p class="card-text">
									<b>PAYPAL</b>
								</p>
								<p class="card-text">We like it all.</p>
								<br>
							</div>
							<div class="card-header" style="padding: 25px">
								<div class="input-group">
									<div class="input-group-prepend  justify-content-center">
										<div class="input-group-text ">
											<input type="radio"
												aria-label="Radio button for following text input">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card"
							style="width: 400px; border-bottom: none; border-left: none; border-right: none">

							<div class="card-body">
								<p class="card-text">
									<b>PAYMENT GATEWAY</b>
								</p>
								<p class="card-text">VISA and mastered card.</p>
								<br>
							</div>
							<div class="card-header" style="padding: 25px">
								<div class="input-group">
									<div class="input-group-prepend  justify-content-center">
										<div class="input-group-text">
											<input type="radio"
												aria-label="Radio button for following text input">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card"
							style="width: 400px; border-bottom: none; border-left: none; border-right: none">

							<div class="card-body">
								<p class="card-text">
									<b>CASH ON DELIVERY</b>
								</p>
								<p class="card-text">You pay when you get it.</p>
								<br>
							</div>
							<div class="card-header" style="padding: 25px">
								<div class="input-group">
									<div class="input-group-prepend  justify-content-center">
										<div class="input-group-text">
											<input type="radio"
												aria-label="Radio button for following text input">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<br> <br>

				<div class="card card-header" style="width: 80rem;">
					<div class="row">
						<div class="card-body">
							<div class="col-md-8">
								<a href="shoppingcart.jsp"><button class="button btn btn-secondary">
									<span class="glyphicon glyphicon-chevron-left"></span>&nbsp;BACK
									TO CART
								</button></a>
							</div>
							<div class="col-md-4 justify-content-end">
								<a href="CheckOutOrderReview.jsp"><button
										class="button1 text-righ"
										style="background-color: #20B2AA; color: #ffffff;">
										REVIEW ORDER &nbsp;<span
											class="glyphicon glyphicon-chevron-right"></span>
									</button></a>
							</div>
						</div>
					</div>
				</div>

				<br>
				<br>

			</div>
			<div class="col-md-3">
				<br>
				<div class="card"
					style="width: 250px; border-bottom: none; border-left: none; border-right: none">
					<div class="card-header">
						<h2>
							<b>ORDER</b>
						</h2>
						<h2>
							<b> SUMMARY</b>
						</h2>
					</div>
					<div class="card-body" style="color: #A9A9A9;">
						<p class="card-text">Shipping and additional costs are
							calculated based on values you entered.</p>
					</div>
				</div>

				<table class="table">
					<thead>
						<tr>

							<th scope="col"></th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
						<%
						int total=(int)session.getAttribute("total");
						%>

							<td style="color: #A9A9A9;">Order SubTotal</td>
							<td><b>&#8377;<%= total %></b></td>
						</tr>
						<tr>

							<td style="color: #A9A9A9;">Shipping & Handling</td>
							<td><b>&#8377;10.00</b></td>
						</tr>
						<tr>

							<td style="color: #A9A9A9;">Tax</td>
							<td><b>&#8377;0.00</b></td>
						</tr>
						<tr>

							<td><b>Total</b></td>
							<td><b>&#8377;<%= total+10 %></b></td>
						</tr>
					</tbody>
				</table>
				<hr>
			</div>

		</div>
	</div>
	<br>
	<br>
<%@ include file="footer.html" %>
	<!-- copyright footer -->

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>