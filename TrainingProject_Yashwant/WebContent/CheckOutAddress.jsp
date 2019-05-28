<%@page import="java.util.ArrayList"%>
<%@page import="com.techaspect.entity.Address"%>
<%@page import="com.techaspect.entity.Customer"%>
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

<%!
String fname;
String lname;
String contact;
String email;
String addressdetails;
String city;
String zip;
String state;
String country;

%>

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
			
			
			 ArrayList<Address> address1 = (ArrayList)session.getAttribute("address");
			 
			 if(customer!=null && address1!=null)
			 {
				 fname=customer.getFirstName();
				 lname=customer.getLastName();
				 contact=customer.getContact();
				 email=customer.getEmail();
				
				for(Address add:address1)
				{
				 addressdetails=add.getAddressDetails();
				 city = add.getCity();
				 zip= add.getZip();
				 state = add.getState();
				 country= add.getCountry();
				}
			
			 }
			 else {
				 
				 fname="";
				 lname="";
				 contact="";
				 email="";
				 addressdetails="";
				 city ="";
				 zip= "";
				 state = "";
				 country="";
				 
			 }
			
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
				} else if (((Boolean) session.getAttribute("is_logged_in"))) {
					
			    	  String sfname=customer.getFirstName();
			    	  String slname=customer.getLastName();
			%>
			<div class="col-md-2"></div>
			<div class="col-md-2">
				<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;

				<%=sfname + slname%></div>
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
					<b>CHECKOUT - ORDER REVIEW</b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="CustomerHomePage.jsp">HOME</a></li>
					<li class="breadcrumb-item">CHECKOUT-ADDRESS</li>
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
						style="color: #ffffff; background-color: #20B2AA;"><span
							class="glyphicon glyphicon-map-marker"></span><br>Address</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="color: #20B2AA;"><i class="fas fa-truck"></i><br>Delivery
							Method</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="color: #20B2AA;"><i class="fas fa-money-bill"></i><br>Payment
							Method</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						style="color: #20B2AA;"><span
							class="glyphicon glyphicon-eye-open"></span><br>Order Review</a>
					</li>
				</ul>
				<br> <br>
				<hr>
				
				
				
				
				
				<form action="personal" method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="fname">First Name</label> <input type="text"
								class="form-control" id="fname" placeholder="fname" name="f1" value=<%=fname%>>
						</div>
						<div class="form-group col-md-6">
							<label for="lname">Last Name</label> <input type="text"
								class="form-control" id="lname" placeholder="lname" name="f2" value=<%=lname%>>
						</div>
					</div>
					<div class="form-group">
						<label for="inputAddress">Address</label><br>
						<textarea class="form-control" rows="4" cols="80" name="f3"><%=addressdetails%></textarea>
					</div>
					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="inputCity">City</label> <input type="text"
								class="form-control" id="inputCity" name="f4" value=<%=city%>>
						</div>
						<div class="form-group col-md-3">
							<label for="inputZip">Zip</label> <input type="text"
								class="form-control" id="inputZip" name="f5" value=<%=zip%>>
						</div>
						<div class="form-group col-md-3">
							<label for="inputState">State</label> <select id="inputState"
								class="form-control" name="f6"<%=state%>>
								<option >Telangana</option>
								<option>AP</option>
							</select>
						</div>
						<div class="form-group col-md-3">
							<label for="inputState">Country</label> <select id="inputState"
								class="form-control" name="f7" <%=country%>>
								<option>India</option>
								<option>US</option>
							</select>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="contnumber">Contact Number</label> <input type="tel"
								class="form-control" id="contnumber" placeholder="contactnumber"
								name="f9" value=<%=contact%>>
						</div>
						<div class="form-group col-md-6">
							<label for="emailid">Email</label> <input type="email"
								class="form-control" id="emailid" placeholder="email" name="f10" value=<%=email%>>
						</div>
					</div>
				</form>
				<br>

				<div class="card card-header" style="width: 80rem;">
					<div class="row">
						<div class="card-body">
							<div class="col-md-6">
								<a href="CustomerShoppingCart.jsp"><button class="button btn btn-secondary">
									<span class="glyphicon glyphicon-chevron-left"></span>&nbsp;BACK
									TO CART
								</button></a>
							</div>
							<div class="col-md-6 justify-content-end">
								<a href="CheckOutDeliveryMethod.jsp"><button
										class="button1 text-right"
										style="background-color: #20B2AA; color: #ffffff;">
										CONTINUE TO DELIVERY METHOD &nbsp;<span
											class="glyphicon glyphicon-chevron-right"></span>
									</button></a>
							</div>
						</div>
					</div>
				</div>

				<br> <br>

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
					<div class="card-body">
						<p class="card-text" style="color: #A9A9A9;">Shipping and
							additional costs are calculated based on values you entered.</p>
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
<%@ include file="footer.html"%>

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>