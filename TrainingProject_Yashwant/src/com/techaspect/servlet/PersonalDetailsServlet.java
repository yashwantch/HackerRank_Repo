package com.techaspect.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.mysql.jdbc.StringUtils;

public class PersonalDetailsServlet extends HttpServlet {

	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");

		PrintWriter out = res.getWriter();

		out.print("<!DOCTYPE html>\r\n" + 
				"<html>\r\n" + 
				"	<head>\r\n" + 
				"		<meta charset=\"UTF-8\">\r\n" + 
				"		<title>SignInSignUpForms</title>\r\n" + 
				"		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n" + 
				"		<link rel=\"stylesheet\" href=\"css/bootstrap.css\">\r\n" + 
				"		<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\r\n" + 
				"		<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n" + 
				"		\r\n" + 
				"		<style>\r\n" + 
				"			#navbar1{	\r\n" + 
				"				color:white;\r\n" + 
				"				background:	#696969;\r\n" + 
				"				padding-top: 10px;\r\n" + 
				"    			padding-bottom: 10px;\r\n" + 
				"			}\r\n" + 
				"			a{\r\n" + 
				"			   color:#696969;\r\n" + 
				"			   font-weight:bold;\r\n" + 
				"			}\r\n" + 
				"			#header{\r\n" + 
				"				background-image: url(\"images/texture-bw.png\");\r\n" + 
				"				height:70px;\r\n" + 
				"				font-size:13px;\r\n" + 
				"				padding-top: 15px;\r\n" + 
				"			}\r\n" + 
				"			#space{\r\n" + 
				"			    margin-top:50px;\r\n" + 
				"			}\r\n" + 
				"			#headlines{\r\n" + 
				"				color:black;\r\n" + 
				"				font-weight:bold;\r\n" + 
				"			}\r\n" + 
				"			#parag{\r\n" + 
				"				color:#696969;\r\n" + 
				"			}\r\n" + 
				"			.button {\r\n" + 
				"    			background-color: #4CAF50;\r\n" + 
				"    			border: none;\r\n" + 
				"    			color: white;\r\n" + 
				"    			padding: 5px 13px;\r\n" + 
				"    			text-align: center;\r\n" + 
				"    			text-decoration: none;\r\n" + 
				"    			display: inline-block;\r\n" + 
				"    			font-size: 15px;\r\n" + 
				"    			margin: 2px 2px;\r\n" + 
				"    			cursor: pointer;\r\n" + 
				"			}\r\n" + 
				"\r\n" + 
				"			.button1 {\r\n" + 
				"    			background-color: white; \r\n" + 
				"    			color: #20B2AA;\r\n" + 
				"    			border: 2px solid #20B2AA;\r\n" + 
				"			}\r\n" + 
				"			#footer{\r\n" + 
				"				background:	#696969;\r\n" + 
				"				color:white;\r\n" + 
				"				padding-top:50px;\r\n" + 
				"			}\r\n" + 
				"			.photo{\r\n" + 
				"				height:40px;\r\n" + 
				"				width:35px;\r\n" + 
				"				margin-bottom:10px;\r\n" + 
				"			}\r\n" + 
				"			.photo1 {\r\n" + 
				"				height: 40px;\r\n" + 
				"				width: 35px;\r\n" + 
				"\r\n" + 
				"			}\r\n" + 
				"			#a{\r\n" + 
				"			left:100px;\r\n" + 
				"			}\r\n" + 
				"			#foo{\r\n" + 
				"			padding-left:0px;\r\n" + 
				"			padding-right:0px;\r\n" + 
				"			}\r\n" + 
				"		</style>\r\n" + 
				"		\r\n" + 
				"	</head>\r\n" + 
				"<body>\r\n" + 
				"    \r\n" + 
				"    	<div class=\"row\" id=\"navbar1\">\r\n" + 
				"    		<div class=\"col-md-4\" style=\"text-align:center\"><b>Contact Us on +91 94520 56704</b></div>\r\n" + 
				"    		<div class=\"col-md-8\" style=\"text-align:right\">\r\n" + 
				"    			<div class=\"col-md-2\"></div>\r\n" + 
				"    			<div class=\"col-md-2\" ><span class=\"glyphicon glyphicon-log-in\"></span>&nbsp;&nbsp;&nbsp;SIGN IN</div>\r\n" + 
				"    			<div class=\"col-md-2\" ><span class=\"glyphicon glyphicon-user\"></span>&nbsp;&nbsp;&nbsp;SIGN UP</div>\r\n" + 
				"    			<div class=\"col-md-2\" >\r\n" + 
				"    			   <i class=\"fa fa-facebook\"></i>&nbsp;&nbsp;\r\n" + 
				"    			   <i class=\"fa fa-google-plus\"></i>&nbsp;&nbsp;\r\n" + 
				"    			   <i class=\"fa fa-twitter\"></i>&nbsp;&nbsp;\r\n" + 
				"    			   <span class=\"glyphicon glyphicon-envelope\"></span>\r\n" + 
				"    			</div>\r\n" + 
				"    		</div>\r\n" + 
				"        </div>\r\n" + 
				"<!-- 1st navbar -->\r\n" + 
				"        \r\n" + 
				"       <nav class=\"navbar navbar-expand-lg navbar-light\">\r\n" + 
				"				<div class = \"container\">\r\n" + 
				"					<div class= \"navbar-collapse\">\r\n" + 
				"						<ul class = \"navbar-nav mr-auto \">\r\n" + 
				"							<li class=\"nav-item\"><img src = \"images/logo.png\"/></li>\r\n" + 
				"						</ul>\r\n" + 
				"						\r\n" + 
				"			    		<ul class=\"navbar-nav\">\r\n" + 
				"							<li class=\"nav-item dropdown\">\r\n" + 
				"					        	<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown1\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Electronics</a>\r\n" + 
				"					        	<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown1\">\r\n" + 
				"					        		<a class=\"dropdown-item\" href=\"#\">Mobiles</a>\r\n" + 
				"					        	</div>\r\n" + 
				"					    	</li>\r\n" + 
				"					    	<li class=\"nav-item dropdown\">\r\n" + 
				"					        	<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown2\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Men</a>\r\n" + 
				"					        	<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown2\">\r\n" + 
				"					        		<a class=\"dropdown-item\" href=\"#\">Shirts</a>\r\n" + 
				"					        	</div>\r\n" + 
				"					    	</li>\r\n" + 
				"					    	<li class=\"nav-item dropdown\">\r\n" + 
				"					        	<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown3\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Women</a>\r\n" + 
				"					        	<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown3\">\r\n" + 
				"					        		<a class=\"dropdown-item\" href=\"#\">Saree</a>\r\n" + 
				"					        	</div>\r\n" + 
				"					    	</li>\r\n" + 
				"					    	<li class=\"nav-item dropdown\">\r\n" + 
				"					        	<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown4\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Baby & Kids</a>\r\n" + 
				"					        	<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown4\">\r\n" + 
				"					        		<a class=\"dropdown-item\" href=\"#\">Dress</a>\r\n" + 
				"					        	</div>\r\n" + 
				"					    	</li>\r\n" + 
				"					    	<li class=\"nav-item dropdown\">\r\n" + 
				"					        	<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown5\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Home & Furniture</a>\r\n" + 
				"					        	<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown5\">\r\n" + 
				"					        		<a class=\"dropdown-item\" href=\"#\">Tables</a>\r\n" + 
				"					        	</div>\r\n" + 
				"					    	</li>\r\n" + 
				"						</ul>\r\n" + 
				"					</div>\r\n" + 
				"				</div>\r\n" + 
				"  			</nav>\r\n" + 
				"\r\n" + 
				"<!-- 2nd navbar -->\r\n" + 
				"        \r\n" + 
				"     \r\n" + 
				"	<div class=\"row\" id=\"header\">\r\n" + 
				"	<div class=\"col-md-2\"></div>\r\n" + 
				"         <div class=\"col-md-4\">\r\n" + 
				"         <div class=\"justify-content-start\">\r\n" + 
				"         <h3><b>MY ACCOUNT</b></h3>\r\n" + 
				"         </div>\r\n" + 
				"         </div>\r\n" + 
				"         <div class=\"col-md-5\">\r\n" + 
				"        	<nav aria-label=\"breadcrumb\">\r\n" + 
				"  				<ol class=\"breadcrumb justify-content-end\" style=\"background:none;\">\r\n" + 
				"    				<li class=\"breadcrumb-item\"><a href=\"#\">HOME</a></li>\r\n" + 
				"    				<li class=\"breadcrumb-item\"><a href=\"#\">MY ACCOUNT</a></li>\r\n" + 
				"  				</ol>\r\n" + 
				"			</nav>\r\n" + 
				"		</div>\r\n" + 
				"		<div class=\"col-md-1\"></div> 	\r\n" + 
				"	</div>\r\n" + 
				"<!-- breadcrumbs -->\r\n" + 
				"<div class=\"container-fluid\"> \r\n" + 
				"    <div class=\"row\"  id=\"space\">\r\n" + 
				"		<div class=\"col-md-2\"></div>\r\n" + 
				"		<div class=\"col-md-5\">\r\n" + 
				"        	<h4 id=\"parag\">Change your personal details or your password here.</h4>\r\n" + 
				"        	<br>\r\n" + 
				"        	<h5 style=\"color: #A9A9A9\">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</h5>\r\n" + 
				"        	<br>\r\n" + 
				"        	<hr>\r\n" + 
				"        	<h3><b>CHANGE PASSWORD</b></h3>\r\n" + 
				"        	<hr align=\"left\" width=20% color=\"#00cc99\">\r\n" + 
				"		<form action=\"change.jsp\" method=\"post\">\r\n" + 
				"        	<div class=\"form-group\">\r\n" + 
				"				<label for=\"pwd\">Old password</label>\r\n" + 
				"				<input type=\"password\"class=\"form-control\" id=\"pwd\" name=\"password\">\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"form-row\">\r\n" + 
				"				<div class=\"form-group col-md-6\">\r\n" + 
				"					<label for=\"npwd\">New password</label>\r\n" + 
				"					<input type=\"password\"class=\"form-control\" name=\"npassword\" id=\"npwd\">\r\n" + 
				"				</div>\r\n" + 
				"				<div class=\"form-group col-md-6\">\r\n" + 
				"					<label for=\"rnpwd\">Retype New password</label>\r\n" + 
				"					<input type=\"password\"class=\"form-control\" name=\"rnpassword\" id=\"rnpwd\">\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"				<p style=\"text-align: center\">\r\n" + 
				"					<button class=\"button button1\">\r\n" + 
				"						<span class=\"glyphicon glyphicon-floppy-disk\"></span>&nbsp;SAVE NEW PASSWORD\r\n" + 
				"					</button>\r\n" + 
				"				</p>\r\n" + 
				"		</form>\r\n" + 
				"<!-- 1st form -->\r\n" + 
				"				<hr>\r\n" + 
				"		<div class=\"row\">&nbsp;</div>\r\n" + 
				"			<h3><b>PERSONAL DETAILS</b></h3>\r\n" + 
				"				<hr align=\"left\" width=18% color=\"#00cc99\">");
		
		Connection con = null;
		Statement st = null;
		ResultSet rs= null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
			st = con.createStatement();
			String sql1="SELECT * FROM customer_information WHERE cust_id = 5";
			rs= st.executeQuery(sql1);
			
			rs.next();
			String fname=rs.getString("cust_fname");
			String lname=rs.getString("cust_lname");
			String contact=rs.getString("cust_contact");
			String email=rs.getString("cust_email");
			
			
			out.print("<form action=\"update.jsp\" method=\"post\">\r\n" + 
					"  			<div class=\"form-row\">\r\n" + 
					"    			<div class=\"form-group col-md-6\">\r\n" + 
					"      				<label for=\"fname\">First Name</label>");
			out.print("<input type=\"text\" class=\"form-control\" id=\"fname\" value=\"");
			out.print(fname);
			out.print(" \"name=\"f1\">\r\n" + 
					"    			</div>\r\n" + 
					"    			<div class=\"form-group col-md-6\">\r\n" + 
					"      				<label for=\"lname\">Last Name</label>\r\n" + 
					"      				<input type=\"text\" class=\"form-control\" id=\"lname\" value=\"");
			out.print(lname);
			out.print("\" name=\"f2\">\r\n" + 
					"    			</div>\r\n" + 
					"  			</div>\r\n" + 
					"  			<div class=\"form-group\">\r\n" + 
					"  					<label for=\"gender\">Gender</label>\r\n" + 
					"  				<div class=\"radio\">\r\n" + 
					"      				<label><input type=\"radio\" name=\"optradio\" checked>Male</label>\r\n" + 
					"    			</div>\r\n" + 
					"    			<div class=\"radio\">\r\n" + 
					"      				<label><input type=\"radio\" name=\"optradio\">Female</label>\r\n" + 
					"    			</div>\r\n" + 
					"    			<div class=\"radio\">\r\n" + 
					"      				<label><input type=\"radio\" name=\"optradio\">Transgender</label>\r\n" + 
					"    			</div>\r\n" + 
					"    		</div>\r\n" + 
					"  			<div class=\"form-group\">\r\n" + 
					"    			<label for=\"inputAddress\">Address</label><br>\r\n" + 
					"    			<textarea class=\"form-control\" rows=\"4\" cols=\"80\" name=\"f3\"></textarea>\r\n" + 
					"  			</div>\r\n" + 
					"  			<div class=\"form-row\">\r\n" + 
					"    			<div class=\"form-group col-md-3\">\r\n" + 
					"      				<label for=\"inputCity\">City</label>\r\n" + 
					"      				<input type=\"text\" class=\"form-control\" id=\"inputCity\" name=\"f4\">\r\n" + 
					"    			</div>\r\n" + 
					"    			<div class=\"form-group col-md-3\">\r\n" + 
					"      				<label for=\"inputZip\">Zip</label>\r\n" + 
					"      				<input type=\"text\" class=\"form-control\" id=\"inputZip\" name=\"f5\">\r\n" + 
					"    			</div>\r\n" + 
					"    			<div class=\"form-group col-md-3\">\r\n" + 
					"      				<label for=\"inputState\">State</label>\r\n" + 
					"      				<select id=\"inputState\" class=\"form-control\" name=\"f6\">\r\n" + 
					"        				<option selected>Telangana</option>\r\n" + 
					"        				<option>AP</option>\r\n" + 
					"      				</select>\r\n" + 
					"    			</div>\r\n" + 
					"    			<div class=\"form-group col-md-3\">\r\n" + 
					"      				<label for=\"inputState\">Country</label>\r\n" + 
					"      				<select id=\"inputState\" class=\"form-control\" name=\"f7\">\r\n" + 
					"        				<option selected>India</option>\r\n" + 
					"        				<option>US</option>\r\n" + 
					"      				</select>\r\n" + 
					"    			</div>\r\n" + 
					" 				</div>\r\n" + 
					" 			<div class=\"form-row\">\r\n" + 
					"    			<div class=\"form-group col-md-6\">\r\n" + 
					"      				<label for=\"contnumber\">Contact Number</label>\r\n" + 
					"      				<input type=\"tel\" class=\"form-control\" id=\"contnumber\" value=\"");
			out.print(contact);
			out.print("\" name=\"f9\">\r\n" + 
					"    			</div>\r\n" + 
					"    			<div class=\"form-group col-md-6\">\r\n" + 
					"      				<label for=\"emailid\">Email</label>\r\n" + 
					"      				<input type=\"email\" class=\"form-control\" id=\"emailid\" value=\"");
			out.print(email);
			out.print("\" name=\"f10\">\r\n" + 
					"    			</div>\r\n" + 
					"  			</div>\r\n" + 
					"  				<p style=\"text-align: center\">\r\n" + 
					"					<button class=\"button button1\">\r\n" + 
					"							 <span class=\"glyphicon glyphicon-floppy-disk\"></span>&nbsp;SAVE CHANGES\r\n" + 
					"					</button>\r\n" + 
					"				</p>\r\n" + 
					"		</form>\r\n" + 
					"<!-- second form -->\r\n" + 
					"		</div>\r\n" + 
					"<!-- class md5 -->\r\n" + 
					"        <div class=\"col-md-1\"></div>\r\n" + 
					"        <div class=\"col-md-3\">\r\n" + 
					"        		<h3 id=\"headlines\">CUSTOMER SECTION</h3>\r\n" + 
					"        		<hr align=\"left\" width=40% color=\"#00cc99\">\r\n" + 
					"        	<div class=\"row\">\r\n" + 
					"        		<a href=\"#\" class=\"btn btn-info btn-lg\" style=\"color:#ffffff;background-color:#20B2AA;font-size:1.2em;\">\r\n" + 
					"          			<span class=\"glyphicon glyphicon-list\"></span>&nbsp;&nbsp;My orders\r\n" + 
					"        		</a>\r\n" + 
					"        	</div>\r\n" + 
					"        	<div class=\"row\">\r\n" + 
					"        		<a href=\"#\" class=\"btn btn-info btn-lg\"style=\"color:#20B2AA;background-color:#ffffff;border:none;font-size:1.2em;\">\r\n" + 
					"          			<span class=\"glyphicon glyphicon-heart\"></span>&nbsp;My Whishlist\r\n" + 
					"        		</a>\r\n" + 
					"        	</div>\r\n" + 
					"        	<div class=\"row\">\r\n" + 
					"        		<a href=\"#\" class=\"btn btn-info btn-lg\"style=\"color:#20B2AA;background-color:#ffffff;border:none;font-size:1.2em;\">\r\n" + 
					"          			<span class=\"glyphicon glyphicon-user\"></span>&nbsp;My account \r\n" + 
					"        		</a>\r\n" + 
					"        	</div>\r\n" + 
					"        	<div class=\"row\">\r\n" + 
					"        		<a href=\"#\" class=\"btn btn-info btn-lg\"style=\"color:#20B2AA;background-color:#ffffff;border:none;font-size:1.2em;\"\">\r\n" + 
					"          			<span class=\"glyphicon glyphicon-log-out\"></span>&nbsp;Logout\r\n" + 
					"        		</a>\r\n" + 
					"        	</div>\r\n" + 
					"        </div>	\r\n" + 
					"        <div class=\"col-md-2\"></div>\r\n" + 
					"	</div>\r\n" + 
					"        \r\n" + 
					"        <div class=\"row\" id=\"footer\">\r\n" + 
					"        	<div class=\"col-md-1\"></div>\r\n" + 
					"        	\r\n" + 
					"        	<div class=\"col-md-2\">\r\n" + 
					"        		<h5>ABOUT US</h5>\r\n" + 
					"        		<h5 style=\"color:#A9A9A9\">if you have any question, please feel free to <a href=\"#\" style=\"color:#20B2AA\">contact us</a>,\r\n" + 
					"        		our customer care service center is working for you 24/7.</h5>\r\n" + 
					"        		<hr style=\"color:white\">\r\n" + 
					"        		<h6 style=\"color:white\">JOIN OUR MONTHLY NEWSLETTER</h6>\r\n" + 
					"        	</div>\r\n" + 
					"        	\r\n" + 
					"        	<div class=\"col-md-3\">\r\n" + 
					"        		<h5>BLOG</h5>\r\n" + 
					"        		<div class=\"row justify-content-around\">\r\n" + 
					"        			<div class=\"col-md-3\">\r\n" + 
					"        				<img class=\"img-responsive photo\" src=\"images/detailsquare1.jpg\" alt=\"picture\">\r\n" + 
					"        			</div>\r\n" + 
					"        			<div class=\"col-md-9\">\r\n" + 
					"        				<h6>BLOG POST NAME</h6>\r\n" + 
					"        			</div>\r\n" + 
					"        		</div>\r\n" + 
					"        		<div class=\"row\">\r\n" + 
					"        			<div class=\"col-md-3\">\r\n" + 
					"        				<img class=\"img-responsive photo\" src=\"images/detailsquare1.jpg\" alt=\"picture\">\r\n" + 
					"        			</div>\r\n" + 
					"        			<div class=\"col-md-9\">\r\n" + 
					"        				<h6>BLOG POST NAME</h6>\r\n" + 
					"        			</div>\r\n" + 
					"        		</div>\r\n" + 
					"        		<div class=\"row\">\r\n" + 
					"        			<div class=\"col-md-3\">\r\n" + 
					"        				<img class=\"img-responsive photo\" src=\"images/detailsquare1.jpg\" alt=\"picture\">\r\n" + 
					"        			</div>\r\n" + 
					"        			<div class=\"col-md-9\">\r\n" + 
					"        				<h6>BLOG POST NAME</h6>\r\n" + 
					"        			</div>\r\n" + 
					"        		</div>\r\n" + 
					"      		\r\n" + 
					"        	</div>\r\n" + 
					"        	\r\n" + 
					"        	<div class=\"col-md-2\">\r\n" + 
					"        		<h5>CONTACT</h5>\r\n" + 
					"        		<h6>TECHASPECT SOLUTIONS PVT.</h6>\r\n" + 
					"        		<h6>LTD.</h6>\r\n" + 
					"        		<h6>PLOT NO. 38,N HEIGHTS, 3RD</h6>\r\n" + 
					"        		<h6>FLOOR</h6>\r\n" + 
					"        		<h6>HITECH CITY PHASE 2,</h6>\r\n" + 
					"        		<h6>HYDERABAD, TELANGANA -</h6>\r\n" + 
					"        		<h6>500081</h6>\r\n" + 
					"        		<h6>INDIA</h6>\r\n" + 
					"        	</div>\r\n" + 
					"        	\r\n" + 
					"        			<div class=\"col-md-4\">\r\n" + 
					"			<div class=\"row\">\r\n" + 
					"					<div class=\"col-md-3\">\r\n" + 
					"						<img class=\"img-responsive photo1\" src=\"images/detailsquare1.jpg\"\r\n" + 
					"							alt=\"picture\">\r\n" + 
					"					</div>\r\n" + 
					"					<div class=\"col-md-3\">\r\n" + 
					"						<img class=\"img-responsive photo1\" src=\"images/detailsquare2.jpg\"\r\n" + 
					"							alt=\"picture\">\r\n" + 
					"					</div>\r\n" + 
					"					<div class=\"col-md-3\">\r\n" + 
					"						<img class=\"img-responsive photo1\" src=\"images/detailsquare3.jpg\"\r\n" + 
					"							alt=\"picture\">\r\n" + 
					"					</div>\r\n" + 
					"			</div>		\r\n" + 
					"			<div class=\"row\">\r\n" + 
					"					<div class=\"col-md-3\">\r\n" + 
					"						<img class=\"img-responsive photo1\" src=\"images/detailsquare1.jpg\"\r\n" + 
					"							alt=\"picture\">\r\n" + 
					"					</div>\r\n" + 
					"					<div class=\"col-md-3\">\r\n" + 
					"						<img class=\"img-responsive photo1\" src=\"images/detailsquare2.jpg\"\r\n" + 
					"							alt=\"picture\">\r\n" + 
					"					</div>\r\n" + 
					"					<div class=\"col-md-3\">\r\n" + 
					"						<img class=\"img-responsive photo1\" src=\"images/detailsquare3.jpg\"\r\n" + 
					"							alt=\"picture\">\r\n" + 
					"					</div>\r\n" + 
					"			</div>\r\n" + 
					"		</div>\r\n" + 
					"			<!-- col-md-4 -->\r\n" + 
					"        </div>\r\n" + 
					" \r\n" + 
					"    \r\n" + 
					"    \r\n" + 
					"   \r\n" + 
					"</div>\r\n" + 
					"<!-- container-fluid -->    \r\n" + 
					"    \r\n" + 
					"    <div class=\"container-fluid\" id=\"foo\">\r\n" + 
					"    \r\n" + 
					"    <div class=\"bg-dark text-white\">\r\n" + 
					"        <div class=\"footer-copyright text-center py-3\">© 2018. TechAspect Solutions Private Limited </div>\r\n" + 
					"  </div>\r\n" + 
					"  </div>");

		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace(out);

		} catch (SQLException sqle) {
			sqle.printStackTrace(out);

		} finally {
			try {
				if (rs != null) {
					rs.close();
				} // if
			
				if (st != null) {
					st.close();
				} // if
				if (con != null) {
					con.close();
				} // if

			} catch (SQLException sqle) {
				sqle.printStackTrace(out);
			} // catch
		} // finally

		out.println("<script src=\"js/jquery-3.3.1.js\"></script>\r\n"
				+ "	 <script src=\"js/bootstrap.js\"></script>\r\n" + "	</body>\r\n" + "</html>");

	}// service

}// class
