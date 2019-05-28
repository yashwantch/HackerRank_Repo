<%@page import="com.techaspect.entity.Vendor"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.techaspect.entity.Product"%>
<%@ page language="java" contentType="text/html; charget=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charget="UTF-8">
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
				<a href="Logout.jsp" style="color: #ffffff"><span
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
	<%!
	String productname;
	int product_price;
	int product_quantity;
	String product_desc;
	String pimage1;
	String pimage2;
	String pimage3;
	String pimage4;
	String pimage5;
	String category;
	String subcategory;
	String d1;
	String d2;
	String d3;
	String d4;
	String d5;
	String d6;
	String d7;
	String d8;
	String d9;
	String d10;
	String dc1;
	String dc2;
	String dc3;
	String dc4;
	String dc5;
	String dc6;
	String dc7;
	String dc8;
	String dc9;
	String dc10;
	String g3;
	String audioformats;
	String audiojack;
	String batterycapacity;
	String batterytype;
	String bluetoothsupport;
	String bluetoothversion;
	String browsetype;
	String calllogmemory;
	String color;
	String depth;
	String displaycolors;
	String displaysize;
	String displaytype;
	String expandablestorage;
	String flash;
	String framerate;
	String fullhdrecording;
	String gprs;
	String hdrecording;
	String height;
	String importantapps;
	String inthebox;
	String internalstorage;
	String internetconnectivity;
	String modelname;
	String modelnumber;
	String networktype;
	String nfc;
	String operatingfrequency;
	String os;
	String otherfeatures;
	String phonebook;
	String preinstalledbrowser;
	String primaryclockspeed;
	String primarycamera;
	String primarycameraavailable;
	String primarycamerafeatures;
	String processorcore;
	String processortype;
	String ram;
	String removablebattery;
	String resolution;
	String resolutiontype;
	String secondaryclockspeed;
	String scamera;
	String scameraavailable;
	String scamerafeatures;
	String sensors;
	String simsize;
	String simtype;
	String smartphone;
	String sms;
	String smcard;
	String supportednetwork;
	String touchscreen;
	String usbconnectivity;
	String videoformats;
	String videorecording;
	String videorecordingresolution;
	String warranty;
	String weight;
	String width;
	String wifi;
	String wifiversion;
	%>
	
	<%
			int id1 =Integer.parseInt(request.getParameter("f1"));
			
				session.setAttribute("productid", id1);
	
		   	ArrayList<Product> productlist = (ArrayList)session.getAttribute("ProductDATA");
	 
			Iterator<Product> iterator = productlist.iterator();
				while(iterator.hasNext()) {
					Product product = iterator.next();
						if(product.getPid()== id1) {
							
							 productname=product.getName();
							 product_price=product.getPrice();
							 product_quantity=product.getQuantity();
							 product_desc=product.getDescription();
							 pimage1=product.getImage1();
							 pimage2=product.getImage2();
							 pimage3=product.getImage3();
							 pimage4=product.getImage4();
							 pimage5=product.getImage5();
							 
							 
							  	 category = product.getCategory();
								 subcategory = product.getSubcategory();
								 d1 = product.getDescp_title_1();
								 d2 = product.getDescp_title_2();
								 d3 = product.getDescp_title_3();
								 d4 = product.getDescp_title_4();
								 d5 = product.getDescp_title_5();
								 d6 = product.getDescp_title_6();
								 d7 = product.getDescp_title_7();
								 d8 = product.getDescp_title_8();
								 d9 = product.getDescp_title_9();
								 d10 = product.getDescp_title_10();
								 dc1 = product.getDescp_content_1();
								 dc2 = product.getDescp_content_2();
								 dc3 = product.getDescp_content_3();
								 dc4 = product.getDescp_content_4();
								 dc5 = product.getDescp_content_5();
								 dc6 = product.getDescp_content_6();
								 dc7 = product.getDescp_content_7();
								 dc8 = product.getDescp_content_8();
								 dc9 = product.getDescp_content_9();
								 dc10 = product.getDescp_content_10();
								 g3 = product.getSpec_3g();
								 audioformats = product.getSpec_audio_formats();
								 audiojack = product.getSpec_audio_jack();
								 batterycapacity = product.getSpec_battery_capacity();
								 batterytype = product.getSpec_battery_type();
								 bluetoothsupport = product.getSpec_bluetooth_support();
								 bluetoothversion = product.getSpec_bluetooth_version();
								 browsetype = product.getSpec_browse_type();
								 calllogmemory = product.getSpec_calllog_memory();
								 color = product.getSpec_color();
								 depth = product.getSpec_depth();
								 displaycolors = product.getSpec_display_colors();
								 displaysize = product.getSpec_display_size();
								 displaytype = product.getSpec_display_type();
								 expandablestorage = product.getSpec_expandable_storage();
								 flash = product.getSpec_flash();
								 framerate = product.getSpec_frame_rate();
								 fullhdrecording = product.getSpec_full_hdrecording();
								 gprs = product.getSpec_gprs();
								 hdrecording = product.getSpec_hdrecording();
								 height = product.getSpec_height();
								 importantapps = product.getSpec_important_apps();
								 inthebox = product.getSpec_in_the_box();
								 internalstorage = product.getSpec_internal_storage();
								 internetconnectivity = product.getSpec_internet_connectivity();
								 modelname = product.getSpec_model_name();
								 modelnumber = product.getSpec_model_number();
								 networktype = product.getSpec_network_type();
								 nfc = product.getSpec_nfc();
								 operatingfrequency = product.getSpec_operating_frequency();
								 os = product.getSpec_operating_system();
								 otherfeatures = product.getSpec_other_features();
								 phonebook = product.getSpec_phonebook();
								 preinstalledbrowser = product.getSpec_preinstalled_browser();
								 primaryclockspeed = product.getSpec_primary_clockspeed();
								 primarycamera = product.getSpec_primarycamera();
								 primarycameraavailable = product.getSpec_primarycamera_available();
								 primarycamerafeatures = product.getSpec_primarycamera_features();
								 processorcore = product.getSpec_processor_core();
								 processortype = product.getSpec_processor_type();
								 ram = product.getSpec_ram();
								 removablebattery = product.getSpec_removable_battery();
								 resolution = product.getSpec_resolution();
								 resolutiontype = product.getSpec_resolution_type();
								 secondaryclockspeed = product.getSpec_secondary_clockspeed();
								 scamera = product.getSpec_secondarycamera();
								 scameraavailable = product.getSpec_secondarycamera_available();
								 scamerafeatures = product.getSpec_secondarycamera_features();
								 sensors = product.getSpec_sensors();
								 simsize = product.getSpec_sim_size();
								 simtype = product.getSpec_sim_type();
								 smartphone = product.getSpec_smart_phone();
								 sms = product.getSpec_sms();
								 smcard = product.getSpec_supported_memorycardtype();
								 supportednetwork = product.getSpec_supported_networks();
								 touchscreen = product.getSpec_touch_screen();
								 usbconnectivity = product.getSpec_usb_connectivity();
								 videoformats = product.getSpec_video_formats();
								 videorecording = product.getSpec_video_recording();
								 videorecordingresolution = product.getSpec_videorecording_resolution();
								 warranty = product.getSpec_warranty_summary();
								 weight = product.getSpec_weight();
								 width = product.getSpec_width();
								 wifi = product.getSpec_wifi();
								 wifiversion = product.getSpec_wifi_version();
						}
				}
					if(pimage1 == null || pimage1.equals("null") || pimage1.equals("")) {
						pimage1="product1.jpg";
					}
					if(pimage2.equals("null") || pimage2 == null || pimage2.equals("")) {
						pimage2="product1.jpg";
					}
					if(pimage3.equals("null") || pimage3 == null || pimage3.equals("")) {
						pimage3="product1.jpg";
					}
					if(pimage4.equals("null") || pimage4 == null || pimage4.equals("")) {
						pimage4="product1.jpg";
					}	
					if(pimage5.equals("null") || pimage5 == null || pimage5.equals("")) {
						pimage5="product1.jpg";
					}
				%>


<div class="container">
	<br>
	<br>
	<h5> Add New Product to the Inventory</h5>
				<hr>
				<h3><b>GENERAL INFORMATION</b></h3>
				<hr align="left" width=10% color="#4FBFA8" style="height: 2px;">
				<form action="ProductUpdateWithLoop" method="post" style="color: #A9A9A9" enctype="multipart/form-data">
					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Name</label>
      						<input type="text" class="form-control" id="inputname" name="name" value=<%= productname %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Price in Rs</label>
      						<input type="text" class="form-control" id="inputprice" name="price" value=<%= product_price %> >
    					</div>
    					<div class="form-group col-md-4">
      						<label for="inputdesc" style="color:#696969;">Short Description</label>
      						<textarea class="form-control" rows="3" cols="80" name="shortdescription"><%= product_desc %></textarea>	
    					</div>	
 					</div>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
    					<label for="inputdesc" style="color:#696969;">Category</label>
      						<select class="custom-select" id="inputGroupSelect01" name="category">
    							<option selected>Electronics</option>
    							<option value="1">Men</option>
    							<option value="2">Women</option>
    							<option value="3">Baby</option>
  							</select>
    					</div>
    					<div class="form-group col-md-6">
    					<label for="inputdesc" style="color:#696969;">Sub Category</label>
      						<select class="custom-select" id="inputGroupSelect01" name="subcategory">
    							<option selected>Mobiles</option>
    							<option value="1">one</option>
    							<option value="2">Two</option>
    							<option value="3">Three</option>
  </select>
    					</div>
 					</div>
 					
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="quantity" style="color:#696969;">Quantity</label>
      						<input type="text" class="form-control" id="inputname" name="quantity"value=<%= product_quantity %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="img1" style="color:#696969;">Image1</label>
      						<div class="card">
  								<div class="card-body">
  								<img class="img-fluid" src="images/<%= pimage1%>"/>
    								<input type="file" name="image1">
  								</div>
							</div>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="img2" style="color:#696969;">Image2</label>
      						<div class="card">
  								<div class="card-body">
  								<img class="img-fluid" src="images/<%= pimage2%>"/>
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
  								<img class="img-fluid" src="images/<%= pimage3%>"/>
    								<input type="file" name="image3">
  								</div>
							</div>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="img4" style="color:#696969;">Image4</label>
      						<div class="card">
  								<div class="card-body">
  								<img class="img-fluid" src="images/<%= pimage4%>"/>
    								<input type="file" name="image4">
  								</div>
							</div>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="img5" style="color:#696969;">Image5</label>
      						<div class="card">
  								<div class="card-body">
  								<img class="img-fluid" src="images/<%= pimage5%>"/>
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
      						<input type="text" class="form-control" id="desctitle1" name="d1" value=<%= d1 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="desccontent1" style="color:#696969;">Description1 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc1"> <%= dc1 %></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="desctitle1"style="color:#696969;">Description2 Title</label>
      						<input type="text" class="form-control" id="desctitle1" name="d2"value=<%= d2 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description2 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc2"><%= dc2 %></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description3 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d3" value=<%= d3 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description3 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc3"><%= dc3 %></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description4 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d4" value=<%= d4 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description4 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc4"><%= dc4 %></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description5 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d5" value=<%= d5 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description5 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc5"><%= dc5 %></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description6 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d6" value=<%= d6 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description6 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc6"><%= dc6 %></textarea>	
    					</div>	
 					</div>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description7 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d7" value=<%= d7 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description7 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc7"><%= dc7 %></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description8 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d8" value=<%= d8 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description8 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc8"><%= dc8 %></textarea>	
    					</div>	
 					</div>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description9 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d9" value=<%= d9 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description9 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc9"><%= dc9 %></textarea>	
    					</div>	
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Description10 Title</label>
      						<input type="text" class="form-control" id="inputname" name="d10" value=<%= d10 %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="inputState" style="color:#696969;">Description10 Content</label>
      						<textarea class="form-control" rows="3" cols="80" name="dc10"><%= dc10 %></textarea>	
    					</div>	
 					</div>
 					
 					
 					<h3><b>PRODUCT SPECIFICATION</b></h3>
				<hr align="left" width=10% color="#4FBFA8" style="height: 2px;">
				<h5><b>General</b></h5>
				
				<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">In the Box</label>
      						<input type="text" class="form-control" id="inputname" name="box" value=<%= inthebox %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Model Number</label>
      						<input type="text" class="form-control" id="inputprice" name="mnum" value=<%= modelnumber %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Model Name</label>
      						<input type="text" class="form-control" id="inputname" name="mnam"value=<%= modelname %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Color</label>
      						<input type="text" class="form-control" id="inputprice" name="color" value=<%= color %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Browser Type</label>
      						<input type="text" class="form-control" id="inputname" name="browser" value=<%= browsetype %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">SIM Type</label>
      						<input type="text" class="form-control" id="inputprice" name="simtype" value=<%= simtype %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Touch Screen</label>
      						<input type="text" class="form-control" id="inputprice" name="touchscreen" value=<%= touchscreen %>>
    					</div>
 					</div>
 					<h5><b>DISPLAY FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Display Size</label>
      						<input type="text" class="form-control" id="inputname" name="dsize" value=<%= displaysize %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Resolution</label>
      						<input type="text" class="form-control" id="inputprice" name="resolution" value=<%= resolution %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Resolution Type</label>
      						<input type="text" class="form-control" id="inputname" name="resolutiontype" value=<%= resolutiontype %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Display Type</label>
      						<input type="text" class="form-control" id="inputprice" name="displaytype" value=<%= displaytype %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Display Colors</label>
      						<input type="text" class="form-control" id="inputprice" name="displaycolors" value=<%= displaycolors %>>
    					</div>
 					</div>
 					
 					<h5><b>OS & PROCESSOR FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Operating System</label>
      						<input type="text" class="form-control" id="inputname" name="os" value=<%= os %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Processor Type</label>
      						<input type="text" class="form-control" id="inputprice" name="processortype" value=<%= processortype %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Processor Core</label>
      						<input type="text" class="form-control" id="inputprice" name="processorcore" value=<%= processorcore %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Primary Clock Speed</label>
      						<input type="text" class="form-control" id="inputname" name="primaryclockspeed" value=<%= primaryclockspeed %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Secondary Clock Speed</label>
      						<input type="text" class="form-control" id="inputprice" name="secondaryclockspeed" value=<%= secondaryclockspeed %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Operating Frequency</label>
      						<input type="text" class="form-control" id="inputprice" name="operatingfrequency" value=<%= operatingfrequency %>>
    					</div>
 					</div>
 					
 					<h5><b>MEMORY & STORAGE FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="Name" style="color:#696969;">Internal Storage</label>
      						<input type="text" class="form-control" id="inputname" name="internalstorage" value=<%= internalstorage %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">RAM</label>
      						<input type="text" class="form-control" id="inputprice" name="ram" value=<%= ram %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Expandable Storage</label>
      						<input type="text" class="form-control" id="inputname" name="estorage" value=<%= expandablestorage %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Supported Memory Card Type</label>
      						<input type="text" class="form-control" id="inputprice" name="smcard" value=<%= smcard %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Call Log Memory</label>
      						<input type="text" class="form-control" id="inputprice" name="calllogmemory" value=<%= calllogmemory %>>
    					</div>
 					</div>
 					
 					<h5><b>CAMERA FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Primary Camera Available</label>
      						<input type="text" class="form-control" id="inputname" name="pcameraavailable" value=<%=primarycameraavailable  %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Primary Camera</label>
      						<input type="text" class="form-control" id="inputprice" name="pcamera" value=<%= primarycamera %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Primary Camera Features</label>
      						<input type="text" class="form-control" id="inputprice" name="pcamerafeatures" value=<%= primarycamerafeatures %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Secondary Camera Available</label>
      						<input type="text" class="form-control" id="inputname" name="scameraavailable" value=<%= scameraavailable %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Secondary  Camera</label>
      						<input type="text" class="form-control" id="inputprice" name="scamera" value=<%= scamera %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price">Secondary  Camera Features</label>
      						<input type="text" class="form-control" id="inputprice" name="scamerafeatures" value=<%= scamerafeatures %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Flash</label>
      						<input type="text" class="form-control" id="inputname" name="flash" value=<%= flash %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">HD Recording</label>
      						<input type="text" class="form-control" id="inputprice" name="hdrecording" value=<%= hdrecording %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Full HD Recording</label>
      						<input type="text" class="form-control" id="inputprice" name="fullhdrecording" value=<%= fullhdrecording %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Video Recording</label>
      						<input type="text" class="form-control" id="inputname" name="videorecording" value=<%= videorecording %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Video Recording Resolution</label>
      						<input type="text" class="form-control" id="inputprice" name="videorecordingresolution" value=<%= videorecordingresolution %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Frame Rate</label>
      						<input type="text" class="form-control" id="inputprice" name="framerate" value=<%= framerate %>>
    					</div>
 					</div>
 					
 					<h5><b>CALL FEATURES</b></h5>
					<div class="form-row">
      						<label for="Name" style="color:#696969;">Phone Book</label>
      						<input type="text" class="form-control" id="inputname" name="phonebook" value=<%= phonebook %>>
 					</div>
 					
 					<h5><b>CONNECTIVITY FEATURES</b></h5>
 					
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Network Type</label>
      						<input type="text" class="form-control" id="inputname" name="networktype" value=<%= networktype %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Supported Networks</label>
      						<input type="text" class="form-control" id="inputprice" name="supportednetworks" value=<%= supportednetwork %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Internet Connectivity</label>
      						<input type="text" class="form-control" id="inputprice" name="internetconnectivity" value=<%= internetconnectivity %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">3G</label>
      						<input type="text" class="form-control" id="inputname" name="g3" value=<%= g3 %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">GPRS</label>
      						<input type="text" class="form-control" id="inputprice" name="gprs" value=<%= gprs %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Pre Installed Browser</label>
      						<input type="text" class="form-control" id="inputprice" name="preinstalledbrowsers" value=<%= preinstalledbrowser %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Bluetooth Support</label>
      						<input type="text" class="form-control" id="inputname" name="bluetoothsupport" value=<%= bluetoothsupport %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Bluetooth Version</label>
      						<input type="text" class="form-control" id="inputprice" name="bluetoothversion" value=<%= bluetoothversion %>>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Wi-Fi</label>
      						<input type="text" class="form-control" id="inputprice" name="wifi" value=<%= wifi %>>
    					</div>
 					</div>
 					<div class="form-row">
    					<div class="form-group col-md-3">
      						<label for="Name" style="color:#696969;">Wi-Fi Version</label>
      						<input type="text" class="form-control" id="inputname" name="wifiversion" value=<%= wifiversion %>>
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">NFC</label>
      						<input type="text" class="form-control" id="inputprice" name="nfc" value=<%= nfc %>>
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">USB Connectivity</label>
      						<input type="text" class="form-control" id="inputprice" name="usbconnectivity" value=<%= usbconnectivity %>>
    					</div>
    					<div>
    						<label for="price" style="color:#696969;">Audio Jack</label>
      						<input type="text" class="form-control" id="inputprice" name="audiojack" value=<%= audiojack %>>
    					</div>
					</div>
					
					<h5><b>OTHER DETAILS</b></h5>
					
					<div class="form-row">
    					<div class="form-group col-md-3">
      						<label for="Name" style="color:#696969;">Smart Phone</label>
      						<input type="text" class="form-control" id="inputname" name="smartphone" value=<%= smartphone %>>
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Sim Size</label>
      						<input type="text" class="form-control" id="inputprice" name="simsize" value=<%= simsize %>>
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Removable Battery</label>
      						<input type="text" class="form-control" id="inputprice" name="removablebattery" value=<%= removablebattery %>>
    					</div>
    					<div>
    						<label for="price" style="color:#696969;">SMS</label>
      						<input type="text" class="form-control" id="inputprice" name="sms" value=<%= sms %>>
    					</div>
					</div>
					<div class="form-row">
    					<div class="form-group col-md-4">
      						<label for="Name" style="color:#696969;">Sensors</label>
      						<textarea class="form-control" rows="3" cols="80" name="sensors"><%= sensors %></textarea>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Other Features</label>
      						<textarea class="form-control" rows="3" cols="80" name="otherfeatures"><%= otherfeatures %></textarea>
    					</div>
    					<div class="form-group col-md-4">
      						<label for="price" style="color:#696969;">Important Apps</label>
      						<input type="text" class="form-control" id="inputprice" name="removablebattery" value=<%= importantapps %>>
    					</div>
					</div>
					
					
					<h5><b>MULTIMEDIA FEATURES</b></h5>
					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Audio Formats</label>
      						<input type="text" class="form-control" id="inputprice" name="audioformats" value=<%= audioformats %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Video Formats</label>
      						<input type="text" class="form-control" id="inputprice" name="videoformats" value=<%= videoformats %>>
    					</div>
					</div>
					<h5><b>BATTERY & POWER FEATURES</b></h5>
					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Battery Capacity</label>
      						<input type="text" class="form-control" id="inputprice" name="batterycapacity" value=<%= batterycapacity %>>
    					</div>
    					<div class="form-group col-md-6">
      						<label for="price" style="color:#696969;">Battery Type</label>
      						<input type="text" class="form-control" id="inputprice" name="batterytype" value=<%= batterytype %>>
    					</div>
					</div>
					
					<h5><b>DIMENSIONS</b></h5>
					<div class="form-row">
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Width</label>
      						<input type="text" class="form-control" id="inputprice" name="width" value=<%= width %>>
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Height</label>
      						<input type="text" class="form-control" id="inputprice" name="height" value=<%= height %>>
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Depth</label>
      						<input type="text" class="form-control" id="inputprice" name="depth" value=<%= depth %>>
    					</div>
    					<div class="form-group col-md-3">
      						<label for="price" style="color:#696969;">Weight</label>
      						<input type="text" class="form-control" id="inputprice" name="weight" value=<%= weight %>>
    					</div>
					</div>
					
					<h5><b>WARRANTY</b></h5>
					<div class="form-row">
      						<label for="price" style="color:#696969;">Warranty Summary</label>
      						<input type="text" class="form-control" id="inputprice" name="warranty" value=<%= warranty %>>
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