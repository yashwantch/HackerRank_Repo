<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
	
	
	
	int id1 =Integer.parseInt(request.getParameter("pid"));
	String name = request.getParameter("pname");
	
	 int price = Integer.parseInt(request.getParameter("pprice"));
	// System.out.println(request.getParameter("pprice"));

	int quantity = Integer.parseInt(request.getParameter("pquantity"));
	String description=request.getParameter("pdescription");
	
	String sql1 = "UPDATE products_information SET product_name = '" + name + "',product_price =" + price
			+ ",product_quantity =" + quantity + " ";
	Part part1=request.getPart("image1");
	System.out.println(part1);
	Part part2=request.getPart("image2");
	System.out.println(part2);
	Part part3=request.getPart("image3");
	System.out.println(part3);
	Part part4=request.getPart("image4");
	System.out.println(part4);
	Part part5=request.getPart("image5");
	System.out.println(part5);
	int vid=(int)session.getAttribute("id");
	
	String image1=null, image2=null, image3=null, image4=null, image5=null;
	if(part1.getSize() != 0 )
	{
 
	String partHeader1 = part1.getHeader("content-disposition");
	for (String content : part1.getHeader("content-disposition").split(";")) {
	    if (content.trim().startsWith("filename")) {
	        image1 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
	    }
	}
	
	FileOutputStream fos = null;
	InputStream is = null;

	try {
		image1="v"+vid+"1"+image1;
		sql1 = sql1+", product_image1 = '"+image1+"'";
		File file = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image1);
	    fos = new FileOutputStream(file);
	    is = part1.getInputStream();

	    int read = 0;
	    final byte[] bytes = new byte[1024];

	    while((read = is.read(bytes)) != -1) {
	        fos.write(bytes, 0, read);
	    }
	} catch (FileNotFoundException fnfe) {
	    fnfe.printStackTrace();
	} finally {
	    if (fos != null) {
	        fos.close();
	    }
	    if (is != null) {
	    	is.close();
	    }
	}
	
	}//if

	 if(part2.getSize() != 0)
	{
 
	String partHeader1 = part2.getHeader("content-disposition");
	for (String content : part2.getHeader("content-disposition").split(";")) {
	    if (content.trim().startsWith("filename")) {
	        image2 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
	    }
	}
	
	FileOutputStream fos = null;
	InputStream is = null;

	try {
		//String arr1[]=image1.split("\\.");
		//System.out.println(arr1[1]);
		//System.out.println(image1);
		image2="v"+vid+"1"+image2;
		sql1=sql1+", product_image2 = '"+image2+"'";
		File file = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image2);
	    fos = new FileOutputStream(file);
	    is = part2.getInputStream();

	    int read = 0;
	    final byte[] bytes = new byte[1024];

	    while((read = is.read(bytes)) != -1) {
	        fos.write(bytes, 0, read);
	    }
	} catch (FileNotFoundException fnfe) {
	    fnfe.printStackTrace();
	} finally {
	    if (fos != null) {
	        fos.close();
	    }
	    if (is != null) {
	    	is.close();
	    }
	}
	
	}//if
	
	if(part3.getSize() != 0)
	{
 
	String partHeader1 = part3.getHeader("content-disposition");
	for (String content : part3.getHeader("content-disposition").split(";")) {
	    if (content.trim().startsWith("filename")) {
	        image3 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
	    }
	}
	
	FileOutputStream fos = null;
	InputStream is = null;

	try {
		//String arr1[]=image1.split("\\.");
		//System.out.println(arr1[1]);
		//System.out.println(image1);
		image3="v"+vid+"1"+image3;
		sql1=sql1+", product_image3= '"+image3+"'";
		File file = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image3);
	    fos = new FileOutputStream(file);
	    is = part3.getInputStream();

	    int read = 0;
	    final byte[] bytes = new byte[1024];

	    while((read = is.read(bytes)) != -1) {
	        fos.write(bytes, 0, read);
	    }
	} catch (FileNotFoundException fnfe) {
	    fnfe.printStackTrace();
	} finally {
	    if (fos != null) {
	        fos.close();
	    }
	    if (is != null) {
	    	is.close();
	    }
	}
	
	}//if
	
	if(part4.getSize() != 0)
	{
 
	String partHeader1 = part4.getHeader("content-disposition");
	for (String content : part4.getHeader("content-disposition").split(";")) {
	    if (content.trim().startsWith("filename")) {
	        image4 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
	    }
	}
	
	FileOutputStream fos = null;
	InputStream is = null;

	try {
		//String arr1[]=image1.split("\\.");
		//System.out.println(arr1[1]);
		//System.out.println(image1);
		image4="v"+vid+"1"+image4;
		sql1=sql1+", product_image4= '"+image4+"'";
		File file = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image4);
	    fos = new FileOutputStream(file);
	    is = part4.getInputStream();

	    int read = 0;
	    final byte[] bytes = new byte[1024];

	    while((read = is.read(bytes)) != -1) {
	        fos.write(bytes, 0, read);
	    }
	} catch (FileNotFoundException fnfe) {
	    fnfe.printStackTrace();
	} finally {
	    if (fos != null) {
	        fos.close();
	    }
	    if (is != null) {
	    	is.close();
	    }
	}
	
	}//if
	
	if(part5.getSize() != 0)
	{
 
	String partHeader1 = part5.getHeader("content-disposition");
	for (String content : part5.getHeader("content-disposition").split(";")) {
	    if (content.trim().startsWith("filename")) {
	        image5 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
	    }
	}
	
	FileOutputStream fos = null;
	InputStream is = null;

	try {
		//String arr1[]=image1.split("\\.");
		//System.out.println(arr1[1]);
		//System.out.println(image1);
		image5="v"+vid+"1"+image5;
		sql1=sql1+", product_image5= '"+image5+"'";
		File file = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image5);
	    fos = new FileOutputStream(file);
	    is = part5.getInputStream();

	    int read = 0;
	    final byte[] bytes = new byte[1024];

	    while((read = is.read(bytes)) != -1) {
	        fos.write(bytes, 0, read);
	    }
	} catch (FileNotFoundException fnfe) {
	    fnfe.printStackTrace();
	} finally {
	    if (fos != null) {
	        fos.close();
	    }
	    if (is != null) {
	    	is.close();
	    }
	}
	
	} //if
	
	
	sql1=sql1+"WHERE product_id="+id1+" ";
	
	
	
	
	
	
	
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
			st = con.createStatement();


			//String sql1 = "UPDATE products_information SET product_name = ('" + name + "'),product_price =(" + price
				//	+ "),product_quantity =(" + quantity + "),product_description =('" + description + "'),product_image1 = ('" +image1 + "'),product_image2 = ('" +image2 + "'),product_image3 = ('" +image3 + "'),product_image4 = ('" +image4 + "'),product_image5 = ('" +image5 + "') WHERE product_id="+id1+" ";
				int result = st.executeUpdate(sql1);
				if (result != 0) {
					
					response.sendRedirect("VendorProductList.jsp");
	%>



	


	<%
		}

		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();

		} catch (SQLException sqle) {
			sqle.printStackTrace();

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
				sqle.printStackTrace();
			} // catch
		} // finally
	%>

</body>
</html>