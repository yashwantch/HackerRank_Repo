<%@page import="java.util.Iterator"%>
<%@page import="com.tadigital.entity.Product"%>
<%@page import="java.util.ArrayList"%>
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
<link rel="stylesheet" href="css/external.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<style>

.vl {
    border-left: 6px solid #4FBFA8;
    height: 70px;
    }
    
    .bar-container {
    background-color: #f1f1f1;
    text-align: center;
    color: white;
}

/* Individual bars */
.bar-5 {width: 60%; height: 18px; background-color: #4CAF50;}
.bar-4 {width: 30%; height: 18px; background-color: #2196F3;}
.bar-3 {width: 10%; height: 18px; background-color: #00bcd4;}
.bar-2 {width: 4%; height: 18px; background-color: #ff9800;}
.bar-1 {width: 15%; height: 18px; background-color: #f44336;}
</style>
</head>


	<%!
	int productid;
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
				<a href="customerlogout" style="color: #ffffff"><span
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
					&nbsp;&nbsp;
					
				<a href="CustomerShoppingCart.jsp"><span class="glyphicon glyphicon-shopping-cart" style="color: #ffffff"></span></a>
					
			</div>
		</div>
	</div>
	<!-- 1st navigation bar -->
<%@ include file="index12.html" %>


	
	
	
<%
	ArrayList<Product> productlist = (ArrayList)session.getAttribute("Productdescription");
	 
			Iterator<Product> iterator = productlist.iterator();
				while(iterator.hasNext()) {
					Product product = iterator.next();
					
							productid=product.getPid();
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
				
				
					<div class="row" id="header">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<div class="justify-content-start">
				<h3>
					<b><%= productname %></b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="CustomerHomePage.jsp">HOME</a></li>
					<li class="breadcrumb-item"><a href="#">NEW ACCOUNT</a></li>
					<li class="breadcrumb-item active" aria-current="page"><a
						href="#">SIGN IN</a></li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumb navigation -->
	<br>
				
				
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
				<div class="col-md-0.3">
					<div class="vl"></div></div>
				<div class="col-md-10">
					<h4><i>The beauty of what we've engineered is to give you the slimmest feel in your hand without compromising the big screen size, And the elegantly curved front and back fit in your palm just right. It's as beautiful to look at, as it to use. Dual Pixel 12MP,Bright Lens F1.7,1.4um pixels on image sensor with Phase Detection Action Autofocus, Motion Panorama, Motion Photo and Hyperlapse. </i></h4>
				</div>
		</div>	
		<br><br>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-3">
				<img class="img-fluid" src="images/<%= pimage1%>" alt="picture">
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-5">
			<br><br>
				<hr>
				
					<h3 style="text-align:center;"><b>Available Colors</b></h3>
					<br>
					<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-5">
							<div class="dropdown">
  								<button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
    								Black      
  								</button>
  								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    								<a class="dropdown-item" href="#">White</a>
    								<a class="dropdown-item" href="#">Red</a>
    								<a class="dropdown-item" href="#">Gold</a>
  								</div>
							</div>
						</div>
					</div>
					<br>
					<h2 style="text-align:center;"><b>&#8377; <%= product_price %></b></h2>
					

      <p style="text-align: center">
      <a href="shoppingcart?product_id=<%= productid %>">
						<button class="button button1">
							<span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;Add to cart
						</button></a>
						<button type="button" class="btn" style="background: #bdbfc1;"><i class="far fa-heart"></i></button>
					</p>
      		<hr>
     	 <div class="row">
		 <div class="col-md-2">
		 <img class="img-fluid" src="images/<%= pimage1%>" alt="picture">
		 </div>
		 <div class="col-md-2">
		 <img class="img-fluid" src="images/<%= pimage2%>" alt="picture">
		 </div>
		 <div class="col-md-2">
		 <img class="img-fluid" src="images/<%= pimage3%>" alt="picture">
		 </div>
		 <div class="col-md-2">
		 <img class="img-fluid" src="images/<%= pimage4%>" alt="picture">
		 </div>
		 <div class="col-md-2">
		 <img class="img-fluid" src="images/<%= pimage5%>" alt="picture">
		 </div>

		</div><!-- row photos -->      
    </div><!-- col-md-5 -->
    
			</div>
			<br>
			<hr>
			</div><!-- container fluid -->
			<div class="container">
				<h3><b>Product Description</b></h3>
				<hr align="left" width=10% color="#4FBFA8" style="height: 2px;">
				<h5><b><%= d1 %></b></h5>
				<p><%= dc1 %></p>
				
				<h5><b><%= d2 %></b></h5>
				<p><%= dc2 %></p>
				
				<h5><b><%= d3 %></b></h5>
				<p><%= dc3 %></p>
				
				<h5><b><%= d4 %></b></h5>
				<p><%= dc4 %></p>
				
				<h5><b><%= d5 %></b></h5>
				<p><%= dc5 %></p>
				
				<h5><b><%= d6 %></b></h5>
				<p><%= dc6 %></p>
				
				<h5><b><%= d7 %></b></h5>
				<p><%= dc7 %></p>
				
				<h5><b><%= d8 %></b></h5>
				<p><%= dc8 %></p>
				
				<h5><b><%= d9 %></b></h5>
				<p><%= dc9 %></p>
				
				<h5><b><%= d10 %></b></h5>
				<p><%= dc10 %></p>
				
				<hr>
				<h3><b>Specifications</b></h3>
				<hr align="left" width=10% color="#4FBFA8" style="height: 2px;">
				<h5><b>General</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">In The Box</th>
      						<td><%= inthebox %></td>
    					</tr>
    					<tr>
      						<th scope="row">Model Number</th>
      						<td><%= modelnumber %></td>
    					</tr>
    					<tr>
      						<th scope="row">Model Name</th>
      						<td><%= modelname %></td>
    					</tr>
    					<tr>
      						<th scope="row">Color</th>
      						<td><%= color %></td>
    					</tr>
    					<tr>
      						<th scope="row">Browse Type</th>
      						<td><%= browsetype %></td>
    					</tr>
    					<tr>
      						<th scope="row">SIM Type</th>
      						<td><%= simtype %></td>
    					</tr>
    					<tr>
      						<th scope="row">TouchScreen</th>
      						<td><%= touchscreen %></td>
    					</tr>
  					</tbody>
				</table>
				
				<h5><b>Display Features</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Display Size</th>
      						<td><%= displaysize %></td>
    					</tr>
    					<tr>
      						<th scope="row">Resolution</th>
      						<td><%= resolution %></td>
    					</tr>
    					<tr>
      						<th scope="row">Resolution Type</th>
      						<td><%= resolutiontype %></td>
    					</tr>
    					<tr>
      						<th scope="row">Display Type</th>
      						<td><%= displaytype %></td>
    					</tr>
    					<tr>
      						<th scope="row">Display Colors</th>
      						<td><%= displaycolors %></td>
    					</tr>
  					</tbody>
				</table>
				<h5><b>OS & Processor Features</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Operating System</th>
      						<td><%= os %></td>
    					</tr>
    					<tr>
      						<th scope="row">Processor Type</th>
      						<td><%= processortype %></td>
    					</tr>
    					<tr>
      						<th scope="row">Processor Core</th>
      						<td><%= processorcore %></td>
    					</tr>
    					<tr>
      						<th scope="row">Primary Clock Speed</th>
      						<td><%= primaryclockspeed %></td>
    					</tr>
    					<tr>
      						<th scope="row">Secondary Clock Speed</th>
      						<td><%= secondaryclockspeed %></td>
    					</tr>
    					<tr>
      						<th scope="row">Operating Frequency</th>
      						<td><%= operatingfrequency %></td>
    					</tr>
  					</tbody>
				</table>
				<h5><b>Memory & Storage Features</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Internal Storage</th>
      						<td><%= internalstorage %></td>
    					</tr>
    					<tr>
      						<th scope="row">RAM</th>
      						<td><%= ram %></td>
    					</tr>
    					<tr>
      						<th scope="row">Expandable Storage</th>
      						<td><%= expandablestorage %></td>
    					</tr>
    					<tr>
      						<th scope="row">Supported Memory Card Type</th>
      						<td><%= smcard %></td>
    					</tr>
  					</tbody>
				</table>
				<h5><b>Camera Features</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Primary Camera Available</th>
      						<td><%= primarycameraavailable %></td>
    					</tr>
    					<tr>
      						<th scope="row">Primary Camera</th>
      						<td><%= primarycamera %></td>
    					</tr>
    					<tr>
      						<th scope="row">Primary Camera Features</th>
      						<td><%= primarycamerafeatures %></td>
    					</tr>
    					<tr>
      						<th scope="row">Secondary Camera Available</th>
      						<td><%= scameraavailable %></td>
    					</tr>
    					<tr>
      						<th scope="row">Secondary Camera</th>
      						<td><%= scamera %></td>
    					</tr>
    					<tr>
      						<th scope="row">Secondary Camera Features</th>
      						<td><%= scamerafeatures %></td>
    					</tr>
    					<tr>
      						<th scope="row">Flash</th>
      						<td><%= flash %></td>
    					</tr>
    					<tr>
      						<th scope="row">HD Recording</th>
      						<td><%= hdrecording %></td>
    					</tr>
    					<tr>
      						<th scope="row">Full HD Recording</th>
      						<td><%= fullhdrecording %></td>
    					</tr>
    					<tr>
      						<th scope="row">Video Recording</th>
      						<td><%= videorecording %></td>
    					</tr>
    					<tr>
      						<th scope="row">Video Recording Resolution</th>
      						<td><%= videorecordingresolution %></td>
    					</tr>
    					<tr>
      						<th scope="row">Frame Rate</th>
      						<td><%= framerate %></td>
    					</tr>
  					</tbody>
				</table>
				
				<h5><b>Call Features</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Phone Book</th>
      						<td><%= phonebook %></td>
    					</tr>
    					
  					</tbody>
				</table>
				
				
				<h5><b>Connectivity Features</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Network Type</th>
      						<td><%= networktype %></td>
    					</tr>
    					<tr>
      						<th scope="row">Supported Networks</th>
      						<td><%= supportednetwork %></td>
    					</tr>
    					<tr>
      						<th scope="row">Internet Connectivity</th>
      						<td><%= internetconnectivity %></td>
    					</tr>
    					<tr>
      						<th scope="row">3G</th>
      						<td><%= g3 %></td>
    					</tr>
    					<tr>
      						<th scope="row">GPRS</th>
      						<td><%= gprs %></td>
    					</tr>
    					<tr>
      						<th scope="row">Pre Installed Browser</th>
      						<td><%= preinstalledbrowser %></td>
    					</tr>
    					<tr>
      						<th scope="row">Bluetooth Support</th>
      						<td><%= bluetoothsupport %></td>
    					</tr>
    					<tr>
      						<th scope="row">Bluetooth Version</th>
      						<td><%= bluetoothversion %></td>
    					</tr>
    					<tr>
      						<th scope="row">Wi-Fi</th>
      						<td><%= wifi %></td>
    					</tr>
    					<tr>
      						<th scope="row">Wi-Fi Version</th>
      						<td><%= wifiversion %></td>
    					</tr>
    					<tr>
      						<th scope="row">NFC</th>
      						<td><%= nfc %></td>
    					</tr>
    					<tr>
      						<th scope="row">USB Connectivity</th>
      						<td><%= usbconnectivity %></td>
    					</tr>
    					<tr>
      						<th scope="row">Audio Jack</th>
      						<td><%= audiojack %></td>
    					</tr>
  					</tbody>
				</table>
				
				
				<h5><b>Other Details</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Smartphone</th>
      						<td><%= smartphone %></td>
    					</tr>
    					<tr>
      						<th scope="row">SIM Size</th>
      						<td><%= simsize %></td>
    					</tr>
    					<tr>
      						<th scope="row">Removable Battery</th>
      						<td><%= removablebattery %></td>
    					</tr>
    					<tr>
      						<th scope="row">SMS</th>
      						<td><%= sms %></td>
    					</tr>
    					<tr>
    						<th scope="row">Sensors</th>
      						<td><%= sensors %></td>
    					</tr>
    					<tr>
      						<th scope="row">Other Features</th>
      						<td><%= otherfeatures %></td>
    					</tr>
    					<tr>
      						<th scope="row">Important Apps</th>
      						<td><%= importantapps %></td>
    					</tr>
  					</tbody>
				</table>
				
				
				<h5><b>Multimedia Features</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Audio Formats</th>
      						<td><%= audioformats %></td>
    					</tr>
    					<tr>
      						<th scope="row">Video Formats</th>
      						<td><%= videoformats %></td>
    					</tr>
  					</tbody>
				</table>
				
				
				<h5><b>Battery & Power Features</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Battery Capacity</th>
      						<td><%= batterycapacity %></td>
    					</tr>
    					<tr>
      						<th scope="row">Battery Type</th>
      						<td><%= batterytype %></td>
    					</tr>
  					</tbody>
				</table>
				
				<h5><b>Dimensions</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Width</th>
      						<td><%= width %>mm</td>
    					</tr>
    					<tr>
      						<th scope="row">Height</th>
      						<td><%= height %>mm</td>
    					</tr>
    					<tr>
      						<th scope="row">Depth</th>
      						<td><%= depth %>mm</td>
    					</tr>
    					<tr>
      						<th scope="row">Weight</th>
      						<td><%= weight %>g</td>
    					</tr>
  					</tbody>
				</table>
				
				<h5><b>Warranty</b></h5>
				<table class="table table-bordered table-dark table-striped">
  					<tbody>
    					<tr>
      						<th scope="row">Warranty Summary</th>
      						<td><%= warranty %> Year Available for Mobile</td>
    					</tr>
  					</tbody>
				</table>
				
				<hr>
				
				<h3><b>Rating & Reviews</b></h3>
				<hr align="left" width=10% color="#4FBFA8" style="height: 2px;">
				<div class="row">
					<div class="col-md-3">
						<h3>4.3 &#9733;</h3>
						<p> 14,377 Ratings&3,143 Reviews</p>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-2" style="padding-right: 0em;">
					 			<p><b>5 &#9733;</b></p></div>
					 		<div class="col-md-8" style="padding-right: 0em; padding-left: 0em;">
					 			<div class="bar-container">
      							<div class="bar-5"></div>
    							</div>
    						</div>
    						<div class="col-md-2"><p>8,399</p></div>
    					</div><!-- rating star row -->
    					<div class="row">
    						<div class="col-md-2" style="padding-right: 0em;">
    							<p><b>4 &#9733;</b></p></div>
    						<div class="col-md-8" style="padding-right: 0em; padding-left: 0em;">
    							<div class="bar-container">
      							<div class="bar-4"></div>
    							</div>
    						</div>
    						<div class="col-md-2"><p>3,594</p></div>
    					</div>
    					<div class="row">
    						<div class="col-md-2" style="padding-right: 0em;">
    							<p><b>3 &#9733;</b></p></div>
    						<div class="col-md-8" style="padding-right: 0em; padding-left: 0em;">
    							<div class="bar-container">
      							<div class="bar-3"></div>
    							</div>
    						</div>
    						<div class="col-md-2"><p>1,137</p></div>
    					</div>
    					<div class="row">
    						<div class="col-md-2" style="padding-right: 0em;">
    							<p><b>2 &#9733;</b></p></div>
    						<div class="col-md-8" style="padding-right: 0em; padding-left: 0em;">
    							<div class="bar-container">
      							<div class="bar-2"></div>
    							</div>
    						</div>
    						<div class="col-md-2"><p>378</p></div>
    					</div>
    					<div class="row">
    						<div class="col-md-2" style="padding-right: 0em;">
    				<p><b>1 &#9733;</b></p></div>
    				<div class="col-md-8" style="padding-right: 0em; padding-left: 0em;">
    				<div class="bar-container">
      					<div class="bar-1"></div>
    				</div>
    				</div>
    				<div class="col-md-2"><p>869</p></div>
    				</div>
				</div>
					
					<div class="col-md-3">
					<button class="button button1">
							&nbsp;Rate this product
						</button>
					</div>
				</div><!-- rating and review -->
				
				<div class="card">
  					<div class="card-body">
    					<h5 class="card-title"><b>Akshat Kumar</b></h5>
    					<h5 class="card-title"><b>&#9733;&#9733;&#9733;&#9733;&#9734;</b></h5>
    					<h6 class="card-subtitle mb-2 text-muted">September 7,2018</h6>
    					<p class="card-text">This is a nice phone</p>
    					<p class="card-text">Nice big screen and good battery(8-9 hrs) for business use.</p>
    					<p class="card-text">Great looks and features and a premium feel.</p>
    					<a href="#" class="card-link">Helpful</a>
    					<a href="#" class="card-link">Comment</a>
    					<a href="#" class="card-link">Report Abuse</a>
    					
  					</div>
				</div>
				<br>
				
				<div class="card">
  					<div class="card-body">
    					<h5 class="card-title"><b>Chetan Sharma</b></h5>
    					<h5 class="card-title"><b>&#9733;&#9733;&#9733;&#9734;&#9734;</b></h5>
    					<h6 class="card-subtitle mb-2 text-muted">August 23,2018</h6>
    					<p class="card-text">Good phone but camera is not good</p>
    					<a href="#" class="card-link">Helpful</a>
    					<a href="#" class="card-link">Comment</a>
    					<a href="#" class="card-link">Report Abuse</a>
    					
  					</div>
				</div>
				<br>
				
				<div class="card">
  					<div class="card-body">
    					<h5 class="card-title"><b>Gaurav Kappr</b></h5>
    					<h5 class="card-title"><b>&#9733;&#9733;&#9733;&#9733;&#9733;</b></h5>
    					<h6 class="card-subtitle mb-2 text-muted">August 14,2018</h6>
    					<p class="card-text">Picture quality is best</p>
    					<p class="card-text">Sound quality good don't expect loud sound from Samsung</p>
    					<p class="card-text">Battery Drain fast.</p>
    					<a href="#" class="card-link">Helpful</a>
    					<a href="#" class="card-link">Comment</a>
    					<a href="#" class="card-link">Report Abuse</a>
    					
  					</div>
				</div>
				
				
				<hr>
			</div><!-- container -->
	
	<%@ include file="footer.html"%>

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/popper.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>