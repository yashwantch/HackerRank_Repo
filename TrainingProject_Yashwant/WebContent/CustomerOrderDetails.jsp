<%@page import="java.util.Iterator"%>
<%@page import="com.tadigital.entity.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tadigital.entity.Customer"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
 
int total;
String productname;
int product_price;
int product_quantity;
String pimage1;
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
					<b>ORDER DETAILS</b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="CustomerHomePage.jsp">HOME</a></li>
					<li class="breadcrumb-item"><a href="#">MY ORDERS</a></li>
					<li class="breadcrumb-item"><a href="#">ORDER DETAILS</a></li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumb navigation -->


	<div class="container">
		<div class="row" style="margin-top: 50px;">

			<div class="col-md-9">

				<h4 style="color: #A9A9A9">
					Order #1735 was placed on <b>22/06/2013</b>and is currently<b>Being
						prepared</b>
				</h4>
				<br>
				<h5 style="color: #A9A9A9">If you have any questions, please
					feel free to contact us, our customer service center is working for
					you 24/7</h5>
				<br>
				<br>
				<hr>
				
				<%
			   	ArrayList<Product> productlist = (ArrayList)session.getAttribute("details");
							  total=0;


				Iterator<Product> iterator = productlist.iterator();
							
				while(iterator.hasNext()) {
					Product product = iterator.next();
					productname = product.getName();
					 product_price = product.getPrice();
					 product_quantity = product.getQuantity();
					 pimage1 = product.getImage1();	
			 					total=total+product_price;
	%>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Product</th>
							<th scope="col">Quantity</th>
							<th scope="col">Unit price</th>
							<th scope="col">Discount</th>
							<th scope="col">total</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><div class="row">
									<div class="col-md-3">
										<img class="img-fluid" src="images/<%= pimage1%>" alt="picture">
									</div>
									<div class="col-md-9">
										<h6><%= productname%></h6>
									</div>
								</div></td>
							<td><ul
									class="navbar-nav navbar-collapse navbar navbar-expand-lg navbar-light">
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#" id="navbarDropdown1"
										role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">1</a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown1">
											<a class="dropdown-item" href="#">2</a>
										</div></li>
								</ul></td>
							<td>&#8377;<%= product_price %></td>
							<td>&#8377;0.00</td>
							<td>&#8377;<%= product_price %></td>
						</tr>
						
						<%
		}//while
	
%>
						
						<tr>
							<td colspan="2"></td>
							<td colspan="2">Order SubTotal</td>
							<td>&#8377;<%= product_price %></td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td colspan="2">Shipping & Handling</td>
							<td>&#8377;10.00</td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td colspan="2">Tax</td>
							<td>&#8377;0.00</td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td colspan="2">Total</td>
							<td>&#8377;<%= total %></td>
						</tr>
					</tbody>
				</table>
				<br>
				<div class="card" style="width: 27rem; border: none;">
					<div class="card-body">
						<h3 class="card-title">
							<b>SHIPPING ADDRESS</b>
						</h3>

						<h4 class="card-text">
							Akshat Kumar<br> Plot No. 110,Road No.3<br> Ajanta
							Homes<br> Madinaguda<br> Hyderabad-500081 <br>Telangana,
							India
						</h4>
					</div>
				</div>
				<hr>
				<br>
				<br>
				<br>

			</div>
			<div class="col-md-3">
				<h3 id="headlines">CUSTOMER SECTION</h3>
				<hr align="left" width=40% color="#00cc99">
				<div class="row">
					<a href="CustomerOrders.jsp" class="btn btn-info btn-lg"
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
	<br>
	<br>
<%@ include file="footer.html" %>
	<!-- copyright footer -->

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>