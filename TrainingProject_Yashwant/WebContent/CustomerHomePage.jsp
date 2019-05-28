<%@page import="java.util.Iterator"%>
<%@page import="com.tadigital.entity.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tadigital.entity.Customer"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
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

</head>
	<%!
	int pro_id;
	String productname;
	int product_price;
	int product_quantity;
	String pimage1;
	int counter;
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
    		  
    		  if(counter==0){
    			  response.sendRedirect("homepage");
    			  counter++;
    		  }

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
  			String fname="";
  			String lname="";
  		
      	   		fname=customer.getFirstName();
      	   		lname=customer.getLastName();
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
					<a href="CustomerShoppingCart.jsp"><span class="glyphicon glyphicon-shopping-cart" style="color: #ffffff"></span></a>
			</div>
		</div>
	</div>
	<!-- 1st navigation bar -->
<%@ include file="index12.html" %>

	<div class="row" id="header">
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<div class="justify-content-start">
				<h3>
					<b>NEW ACCOUNT/SIGN IN</b>
				</h3>
			</div>
		</div>
		<div class="col-md-5">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-end" style="background: none;">
					<li class="breadcrumb-item"><a href="#">HOME</a></li>
					<li class="breadcrumb-item"><a href="#">NEW ACCOUNT</a></li>
					<li class="breadcrumb-item active" aria-current="page"><a
						href="#">SIGN IN</a></li>
				</ol>
			</nav>
		</div>
		<div class="col-md-1"></div>
	</div>
	<!-- breadcrumb navigation -->
<div class="container-fluid">
		<div class="row">
			<div class="col-md-9">

				<h3>
					<b>Exclusive Offers</b>
				</h3>
				<hr>
				
				<div class="row">
				
				<%
			   	ArrayList<Product> productlist = (ArrayList)session.getAttribute("homepage");

	%>
	<%		 
	Iterator<Product> iterator = productlist.iterator();
	while(iterator.hasNext()) {
		Product product = iterator.next();
		
				 pro_id = product.getPid(); 		
				 productname = product.getName();
				 product_price = product.getPrice();
				 product_quantity = product.getQuantity();
				 pimage1 = product.getImage1();			
	
		if(pimage1 == null || pimage1.equals("null") || pimage1.equals("")) {
			pimage1="product1.jpg";
		}
	%>
	
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<img class="img-fluid" src="images/<%=pimage1%>" alt="picture">
						<br> <br>
						<p style="text-align: center;">
							<b><%= productname %></b>
						</p>
						<p style="text-align: center;">&#8377;<%= product_price %></p>
						
						<p style="text-align: center">
						<a href="ProductDesc?product_id=<%=pro_id%>"><button class="button button1">
							&nbsp;read more
						</button></a>
					</p>
						<hr>
					</div>
					<%
							}//while
					%>					
				</div>

			</div>
			
			<div class="col-md-3">
			<br><br>
				<h3><b>CUSTOMER SECTION</b></h3>
				<hr align="left" width=40% color="#00cc99">
				<div class="row">
					<a href="CustomerOrders.jsp" class="btn btn-info btn-lg"
						style="color: #20B2AA; background-color: #ffffff; border: none; font-size: 1.2em;">
						<span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;My
						Orders
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
						<span class="glyphicon glyphicon-user"></span>&nbsp;My Account
					</a>
				</div>
				<div class="row">
					<a href="CustomerShoppingCart.jsp" class="btn btn-info btn-lg"
						style="color: #20B2AA; background-color: #ffffff; border: none; font-size: 1.2em;">
						<span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;My Cart
					</a>
				</div>
				<div class="row">
					<a href="Logout.jsp" class="btn btn-info btn-lg"
						style="color: #20B2AA; background-color: #ffffff; border: none; font-size: 1.2em;"">
						<span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout
					</a>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<h3>
						<b>Most Viewed</b>
					</h3>
					<hr>

					<!--Carousel Wrapper-->
					<div id="multi-item-example"
						class="carousel slide carousel-multi-item" data-ride="carousel">
						<!--Slides-->
						<div class="carousel-inner" role="listbox">

							<!--First slide-->
							<div class="carousel-item active">

								<div class="col-md-2">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>

								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>

								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>
								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>
								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>
								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>

							</div>
							<!--/.First slide-->

							<!--Second slide-->
							<div class="carousel-item">

								<div class="col-md-2">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>

								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>

								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>
								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>
								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>
								<div class="col-md-2 clearfix d-none d-md-block">
									<div class="card mb-2">
										<img class="card-img-top"
											src="images/razer2.jpg"
											alt="Card image cap">
										<div class="card-body">
											<h4 class="card-title">Card title</h4>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
											<a class="btn btn-primary">Button</a>
										</div>
									</div>
								</div>

							</div>
							<!--/.Second slide-->


						</div>
						<!--/.Slides-->
						
						<!--Controls-->
						 <a class="left carousel-control" href="#multi-item-example" data-slide="prev" style="background: none;">
      						<span class="glyphicon glyphicon-chevron-left" style="color: gray;"></span>
      						<span class="sr-only">Previous</span>
    					</a>
    					<a class="right carousel-control" href="#multi-item-example" data-slide="next" style="background:none;">
      						<span class="glyphicon glyphicon-chevron-right" style="color: gray;"></span>
      						<span class="sr-only">Next</span>
    					</a>
						<!--/.Controls-->

					</div>
					<!--/.Carousel Wrapper-->
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-md-2">
				<h4>
					<b>Refined By</b>
				</h4>
				<hr>
				<div class="accordion" id="accordionExample">
					<div class="card z-depth-0 bordered">
						<div class="card-header" id="headingOne">
							<h5 class="mb-0">
								<button class="btn btn-link" type="button"
									data-toggle="collapse" data-target="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne">Brand
								</button>
							</h5>
						</div>
						<div id="collapseOne" class="collapse show"
							aria-labelledby="headingOne" data-parent="#accordionExample">
							<div class="card-body">

								<div class="checkbox">
									<label><input type="checkbox" value="">Samsung</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">Vivo</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">Oppo</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">Motorola</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">Nokia</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">Mi</label>
								</div>

							</div>
						</div>
					</div>

					<div class="card z-depth-0 bordered">
						<div class="card-header" id="headingTwo">
							<h5 class="mb-0">
								<button class="btn btn-link collapsed" type="button"
									data-toggle="collapse" data-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">
									Price</button>
							</h5>
						</div>
						<div id="collapseTwo" class="collapse"
							aria-labelledby="headingTwo" data-parent="#accordionExample">
							<div class="card-body">

								<div class="checkbox">
									<label><input type="checkbox" value="">Under&#8377;1000</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">&#8377;1000-&#8377;5000</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">&#8377;5000-&#8377;10000</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">&#8377;10000-&#8377;15000</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">&#8377;15000-&#8377;20000</label>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="">Above
										&#8377;20000</label>
								</div>

							</div>
						</div>
					</div>
					<div class="card z-depth-0 bordered">
						<div class="card-header" id="headingThree">
							<h5 class="mb-0">
								<button class="btn btn-link collapsed" type="button"
									data-toggle="collapse" data-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									Customer Rating</button>
							</h5>
						</div>
						<div id="collapseThree" class="collapse"
							aria-labelledby="headingThree" data-parent="#accordionExample">
							<div class="card-body">
								<input type="checkbox" value=""> <label>&#9733;&#9733;&#9733;&#9733;&#9734;
									&up</label><br> <input type="checkbox" value=""> <label>&#9733;&#9733;&#9733;&#9734;&#9734;
									&up</label><br> <input type="checkbox" value=""> <label>&#9733;&#9733;&#9734;&#9734;&#9734;
									&up</label><br> <input type="checkbox" value=""> <label>&#9733;&#9734;&#9734;&#9734;&#9734;
									&up</label><br>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<h4>
						<b>Explore All Mobiles</b>
					</h4>
				</div>
				<hr>
				<div class="row">
					<div class="col-md-3">
						<img class="img-fluid" src="images/product4.jpg" alt="picture">
						<br> <br>
						<p style="text-align: center;">
							<b>WHITE BLOUSE ARMANI</b>
						</p>
						<br>
						<p style="text-align: center;">&#8377;143.00</p>
						<hr>
					</div>
					<!-- col-md-2 -->
					<div class="col-md-1"></div>
					<div class="col-md-3">

						<img class="img-fluid" src="images/product4.jpg" alt="picture">
						<br> <br>
						<p style="text-align: center;">
							<b>WHITE BLOUSE ARMANI</b>
						</p>
						<br>
						<p style="text-align: center;">&#8377;143.00</p>
						<hr>
					</div>
					<!-- col-md-2 -->

					<div class="col-md-1"></div>
					<div class="col-md-3">
						<img class="img-fluid" src="images/product4.jpg" alt="picture">
						<br> <br>
						<p style="text-align: center;">
							<b>WHITE BLOUSE ARMANI</b>
						</p>
						<br>
						<p style="text-align: center;">&#8377;143.00</p>
						<hr>
					</div>
					<!-- col-md-2 -->
					<div class="col-md-1"></div>
					<div class="col-md-3">
						<img class="img-fluid" src="images/product4.jpg" alt="picture">
						<br> <br>
						<p style="text-align: center;">
							<b>WHITE BLOUSE ARMANI</b>
						</p>
						<br>
						<p style="text-align: center;">&#8377;143.00</p>
						<hr>
					</div>
					<!-- col-md-2 -->
					<div class="col-md-1"></div>
					<div class="col-md-3">
						<img class="img-fluid" src="images/product4.jpg" alt="picture">
						<br> <br>
						<p style="text-align: center;">
							<b>WHITE BLOUSE ARMANI</b>
						</p>
						<br>
						<p style="text-align: center;">&#8377;143.00</p>
						<hr>
					</div>
					<!-- col-md-2 -->

					<div class="col-md-1"></div>
					<div class="col-md-3">
						<img class="img-fluid" src="images/product4.jpg" alt="picture">
						<br> <br>
						<p style="text-align: center;">
							<b>WHITE BLOUSE ARMANI</b>
						</p>
						<br>
						<p style="text-align: center;">&#8377;143.00</p>
						<hr>
					</div>
					<!-- col-md-3 -->

				</div><!--  images row-->


<nav  class="row justify-content-center"aria-label="Page navigation example">
  <ul class="pagination" style="color:#4fbfa8;">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>


			</div>

		</div>

	</div>
	<!-- containerfluid -->

	<%@ include file="footer.html"%>

	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>