<%@page import="com.techaspect.entity.Vendor"%>
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

				</div>
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

	<div class="row" id="header">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<div class="justify-content-start">
				<h3>
					<b>NEW PRODUCT UPLOAD</b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="#">HOME</a></li>
					<li class="breadcrumb-item"><a href="#">LOG OUT</a></li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumb navigation -->


	<div class="container">
	<br>
	<br>
	<h5> Add New Product to the Inventory</h5>
				<hr>
				<h3><b>GENERAL INFORMATION</b></h3>
				<hr align="left" width=10% color="#4FBFA8" style="height: 2px;">
				<form>
					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Name</label>
      						<input type="text" class="form-control" id="inputname" name="name">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Price in Rs</label>
      						<input type="text" class="form-control" id="inputprice" name="price">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="inputdesc" style="color:#696969;">Short Description</label>
      						<textarea class="form-control" rows="3" cols="80" name="shortdescription"></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="quantity" style="color:#696969;">Quantity</label>
      						<input type="text" class="form-control" id="inputname" name="quantity">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="img1" style="color:#696969;">Image1</label>
      						<div class="card">
  								<div class="card-body">
    								<input type="file" name="image1">
  								</div>
							</div>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="img2" style="color:#696969;">Image2</label>
      						<div class="card">
  								<div class="card-body">
    								<input type="file" name="image2">
  								</div>
							</div>
    					</div>	
 					</div>
 					
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="img3" style="color:#696969;">Image3</label>
      						<div class="card">
  								<div class="card-body">
    								<input type="file" name="image3">
  								</div>
							</div>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="img4" style="color:#696969;">Image4</label>
      						<div class="card">
  								<div class="card-body">
    								<input type="file" name="image4">
  								</div>
							</div>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="img5" style="color:#696969;">Image5</label>
      						<div class="card">
  								<div class="card-body">
    								<input type="file" name="image5">
  								</div>
							</div>
    					</div>	
 					</div>
 					
 					<hr>
 					
 					<h3><b>PRODUCT DESCRIPTION</b></h3>
				<hr align="left" width=10% color="#4FBFA8" style="height: 2px;">
				
				<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="desctitle1" style="color:#696969;">Description1 Title</label>
      						<input type="text" class="form-control" id="desctitle1" name="d1">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="desccontent1" style="color:#696969;">Description1 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc1"></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="desctitle1"style="color:#696969;">Description2 Title</label>
      						<input type="text" class="form-control" id="desctitle1" name="d2">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description2 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc2"></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description3 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d3">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description3 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc3"></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description4 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d4">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description4 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc4"></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description5 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d5">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description5 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc5"></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description6 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d6">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description6 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc6"></textarea>	
    					</div>	
 					</div>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description7 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d7">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description7 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc7"></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description8 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d8">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description8 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc8"></textarea>	
    					</div>	
 					</div>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description9 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d9">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description9 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc9"></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description10 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d10">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description10 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc10"></textarea>	
    					</div>	
 					</div>
 					
 					
 					<h3><b>PRODUCT SPECIFICATION</b></h3>
				<hr align="left" width=10% color="#4FBFA8" style="height: 2px;">
				<h5><b>General</b></h5>
				
				<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">In the Box</label>
      						<input type="text" class="form-control" id="inputname" name="box">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Model Number</label>
      						<input type="text" class="form-control" id="inputprice" name="mnum">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Model Name</label>
      						<input type="text" class="form-control" id="inputname" name="mnam">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Color</label>
      						<input type="text" class="form-control" id="inputprice" name="color">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Browser Type</label>
      						<input type="text" class="form-control" id="inputname" name="browser">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">SIM Type</label>
      						<input type="text" class="form-control" id="inputprice" name="simtype">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Touch Screen</label>
      						<input type="text" class="form-control" id="inputprice" name="touchscreen">
    					</div>
 					</div>
 					<h5><b>DISPLAY FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Display Size</label>
      						<input type="text" class="form-control" id="inputname" name="dsize">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Resolution</label>
      						<input type="text" class="form-control" id="inputprice" name="resolution">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Resolution Type</label>
      						<input type="text" class="form-control" id="inputname" name="resolutiontype">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Display Type</label>
      						<input type="text" class="form-control" id="inputprice" name="displaytype">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Display Colors</label>
      						<input type="text" class="form-control" id="inputprice" name="displaycolors">
    					</div>
 					</div>
 					
 					<h5><b>OS & PROCESSOR FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Operating System</label>
      						<input type="text" class="form-control" id="inputname" name="os">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Processor Type</label>
      						<input type="text" class="form-control" id="inputprice" name="processortype">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Processor Core</label>
      						<input type="text" class="form-control" id="inputprice" name="processorcore">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Primary Clock Speed</label>
      						<input type="text" class="form-control" id="inputname" name="primaryclockspeed">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Secondary Clock Speed</label>
      						<input type="text" class="form-control" id="inputprice" name="secondaryclockspeed">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Operating Frequency</label>
      						<input type="text" class="form-control" id="inputprice" name="operatingfrequency">
    					</div>
 					</div>
 					
 					<h5><b>MEMORY & STORAGE FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Internal Storage</label>
      						<input type="text" class="form-control" id="inputname" name="internalstorage">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">RAM</label>
      						<input type="text" class="form-control" id="inputprice" name="ram">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Expandable Storage</label>
      						<input type="text" class="form-control" id="inputname" name="estorage">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Supported Memory Card Type</label>
      						<input type="text" class="form-control" id="inputprice" name="smcard">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Call Log Memory</label>
      						<input type="text" class="form-control" id="inputprice" name="calllogmemory">
    					</div>
 					</div>
 					
 					<h5><b>CAMERA FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Primary Camera Available</label>
      						<input type="text" class="form-control" id="inputname" name="pcameraavailable">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Primary Camera</label>
      						<input type="text" class="form-control" id="inputprice" name="pcamera">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Primary Camera Features</label>
      						<input type="text" class="form-control" id="inputprice" name="pcamerafeatures">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Secondary Camera Available</label>
      						<input type="text" class="form-control" id="inputname" name="scameraavailable">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Secondary  Camera</label>
      						<input type="text" class="form-control" id="inputprice" name="scamera">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price">Secondary  Camera Features</label>
      						<input type="text" class="form-control" id="inputprice" name="scamerafeatures">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Flash</label>
      						<input type="text" class="form-control" id="inputname" name="flash">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">HD Recording</label>
      						<input type="text" class="form-control" id="inputprice" name="hdrecording">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Full HD Recording</label>
      						<input type="text" class="form-control" id="inputprice" name="fullhdrecording">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Video Recording</label>
      						<input type="text" class="form-control" id="inputname" name="videorecording">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Video Recording Resolution</label>
      						<input type="text" class="form-control" id="inputprice" name="videorecordingresolution">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Frame Rate</label>
      						<input type="text" class="form-control" id="inputprice" name="framerate">
    					</div>
 					</div>
 					
 					<h5><b>CALL FEATURES</b></h5>
					<div class="form-row">
      						<label for="Name" style="color:#696969;">Phone Book</label>
      						<input type="text" class="form-control" id="inputname" name="phonebook">
 					</div>
 					
 					<h5><b>CONNECTIVITY FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Network Type</label>
      						<input type="text" class="form-control" id="inputname" name="networktype">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Supported Networks</label>
      						<input type="text" class="form-control" id="inputprice" name="supportednetworks">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Internet Connectivity</label>
      						<input type="text" class="form-control" id="inputprice" name="internetconnectivity">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">3G</label>
      						<input type="text" class="form-control" id="inputname" name="g3">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">GPRS</label>
      						<input type="text" class="form-control" id="inputprice" name="gprs">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Pre Installed Browser</label>
      						<input type="text" class="form-control" id="inputprice" name="preinstalledbrowsers">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Bluetooth Support</label>
      						<input type="text" class="form-control" id="inputname" name="bluetoothsupport">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Bluetooth Version</label>
      						<input type="text" class="form-control" id="inputprice" name="bluetoothversion">
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Wi-Fi</label>
      						<input type="text" class="form-control" id="inputprice" name="wifi">
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-3">
      						<label for="Name" style="color:#696969;">Wi-Fi Version</label>
      						<input type="text" class="form-control" id="inputname" name="wifiversion">
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">NFC</label>
      						<input type="text" class="form-control" id="inputprice" name="nfc">
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">USB Connectivity</label>
      						<input type="text" class="form-control" id="inputprice" name="usbconnectivity">
    					</div>
    					<div>
    						<label for="price" style="color:#696969;">Audio Jack</label>
      						<input type="text" class="form-control" id="inputprice" name="audiojack">
    					</div>
					</div>
					
					<h5><b>OTHER DETAILS</b></h5>
					
					<div class="form-row">
    					<div class="form-group col-md-3">
      						<label for="Name" style="color:#696969;">Smart Phone</label>
      						<input type="text" class="form-control" id="inputname" name="smartphone">
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Sim Size</label>
      						<input type="text" class="form-control" id="inputprice" name="simsize">
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Removable Battery</label>
      						<input type="text" class="form-control" id="inputprice" name="removablebattery">
    					</div>
    					<div>
    						<label for="price" style="color:#696969;">SMS</label>
      						<input type="text" class="form-control" id="inputprice" name="sms">
    					</div>
					</div>
					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Sensors</label>
      						<textarea class="form-control" rows="3" cols="80" name="sensors"></textarea>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Other Features</label>
      						<textarea class="form-control" rows="3" cols="80" name="otherfeatures"></textarea>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Important Apps</label>
      						<input type="text" class="form-control" id="inputprice" name="removablebattery">
    					</div>
					</div>
					
					
					<h5><b>MULTIMEDIA FEATURES</b></h5>
					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Audio Formats</label>
      						<input type="text" class="form-control" id="inputprice" name="audioformats">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Video Formats</label>
      						<input type="text" class="form-control" id="inputprice" name="videoformats">
    					</div>
					</div>
					<h5><b>BATTERY & POWER FEATURES</b></h5>
					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Battery Capacity</label>
      						<input type="text" class="form-control" id="inputprice" name="batterycapacity">
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Battery Type</label>
      						<input type="text" class="form-control" id="inputprice" name="batterytype">
    					</div>
					</div>
					
					<h5><b>DIMENSIONS</b></h5>
					<div class="form-row">
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Width</label>
      						<input type="text" class="form-control" id="inputprice" name="width">
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Height</label>
      						<input type="text" class="form-control" id="inputprice" name="height">
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Depth</label>
      						<input type="text" class="form-control" id="inputprice" name="depth">
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Weight</label>
      						<input type="text" class="form-control" id="inputprice" name="weight">
    					</div>
					</div>
					
					<h5><b>WARRANTY</b></h5>
					<div class="form-row">
      						<label for="price" style="color:#696969;">Warranty Summary</label>
      						<input type="text" class="form-control" id="inputprice" name="warranty">
					</div>
					<br><br>
					<p style="text-align: center">
							<button class="button button1">
								<span class="glyphicon glyphicon-log-in"></span>&nbsp;SAVE
							</button>
						</p>
					
				</form>
			</div>
			

<%@ include file="footer.html" %>
	<!-- copyright footer -->

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>