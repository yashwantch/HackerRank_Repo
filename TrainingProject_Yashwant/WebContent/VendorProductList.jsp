<%@page import="com.techaspect.entity.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.techaspect.entity.Vendor"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
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

#main {
	color: black;
	font-weight: bold;
}

#parag {
	color: #696969;
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

#a {
	left: 100px;
}

#foo {
	padding-left: 0px;
	padding-right: 0px;
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
			Vendor vendor = (Vendor)session.getAttribute("VendorDATA");
			String fname="";
			String lname="";
			if(vendor != null){
    	  	 fname=vendor.getFirstName();
    	  	 lname=vendor.getLastName();
			}
			else {
				response.sendRedirect("vendorloginform.jsp");
			}
    	  if(session.getAttribute("is_logged_in")==null) {
    	%>
			<div class="col-md-2">
				<span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;SIGN
				IN
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
				<a href="VendorLogout.jsp" style="color: #ffffff"><span
					class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;&nbsp;LOG
					OUT</a>
			</div>
			<%
    	    	  }
    	        %>

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
	
	
	<%
				
 ArrayList<Product> productlist = (ArrayList)session.getAttribute("ProductDATA");
						%>

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
		
				<h3 id="main">YOUR PRODUCT LIST</h3>
				<hr>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">ID</th>
								<th scope="col" >NAME</th>
								<th scope="col">price</th>
								<th scope="col">QUANTITY</th>
								<th scope="col">DESC</th>
								<th scope="col"></th>
							</tr>
						</thead>
					<tbody>	
							<%
							 
							for(Product products:productlist)
							{
								int product_id=products.getPid();
								String productname=products.getName();
								int product_price=products.getPrice();
								int product_quantity=products.getQuantity();
								String product_desc=products.getDescription();
								
								
							
							%>
							<tr>
							<td><%= product_id %></td>
							<td><%= productname %></td>
							<td><%= product_price %></td>
							<td><%= product_quantity %></td>
							<td width="70%"><%= product_desc %></td>
							<td><form action="VendorEditProductForm.jsp" method="post"><input type="hidden" value="<%= product_id%>" name="f1"><button class="btn btn-primary" type="submit">Edit</button></form></td>
							<td><form action="vendordelete" method="post"><input type="hidden" value="<%= product_id%>"name="f2"><button class="btn btn-primary"type="submit">DELETE</button></form></td>
							</tr>
							</tbody>
							<%
							}//while
						%>
							</table>
							
						
			</div>
			
		</div>
	
	
<%@ include file="footer.html" %>
	<!-- copyright footer -->

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>