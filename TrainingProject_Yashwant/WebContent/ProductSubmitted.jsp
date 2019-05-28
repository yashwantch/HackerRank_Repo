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
<%!
Part part1;
Part part2;
Part part3;
Part part4;
Part part5;
String image1,image2,image3,image4,image5;
%>

	<%
String name = request.getParameter("pname");
 int price = Integer.parseInt(request.getParameter("pprice"));
 System.out.println(request.getParameter("pprice"));

int quantity = Integer.parseInt(request.getParameter("pquantity"));
String description=request.getParameter("pdescription");
part1=request.getPart("image1");
part2=request.getPart("image2");
part3=request.getPart("image3");
part4=request.getPart("image4");
part5=request.getPart("image5");
int vid=(int)session.getAttribute("id");

String partHeader1 = part1.getHeader("content-disposition");
for (String content : part1.getHeader("content-disposition").split(";")) {
    if (content.trim().startsWith("filename")) {
        image1 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
    }
}
String partHeader2 = part2.getHeader("content-disposition");
for (String content : part2.getHeader("content-disposition").split(";")) {
    if (content.trim().startsWith("filename")) {
        image2 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
    }
}
String partHeader3 = part3.getHeader("content-disposition");
for (String content : part3.getHeader("content-disposition").split(";")) {
    if (content.trim().startsWith("filename")) {
        image3 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
    }
}
String partHeader4 = part4.getHeader("content-disposition");
for (String content : part4.getHeader("content-disposition").split(";")) {
    if (content.trim().startsWith("filename")) {
        image4 = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
    }
}
String partHeader5 = part5.getHeader("content-disposition");
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
	image1="v"+vid+"1"+image1;
	image2="v"+vid+"1"+image2;
	image3="v"+vid+"1"+image3;
	image4="v"+vid+"1"+image4;
	image5="v"+vid+"1"+image5;
	File file1 = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image1);
	File file2 = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image2);
	File file3 = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image3);
	File file4 = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image4);
	File file5 = new File("D:\\workspace\\TrainingProject_Yashwant\\WebContent\\images" + File.separator + image5);
    fos = new FileOutputStream(file1);
    is = part1.getInputStream();

    int read = 0;
    final byte[] bytes1 = new byte[1024];

    while((read = is.read(bytes1)) != -1) {
        fos.write(bytes1, 0, read);
    }
    
    
    fos = new FileOutputStream(file2);
    is = part2.getInputStream();

     read = 0;
    final byte[] bytes2 = new byte[1024];

    while((read = is.read(bytes2)) != -1) {
        fos.write(bytes2, 0, read);
    }
    
    
    fos = new FileOutputStream(file3);
    is = part3.getInputStream();

     read = 0;
    final byte[] bytes3 = new byte[1024];

    while((read = is.read(bytes3)) != -1) {
        fos.write(bytes3, 0, read);
    }
    
    
    fos = new FileOutputStream(file4);
    is = part4.getInputStream();

     read = 0;
    final byte[] bytes4 = new byte[1024];

    while((read = is.read(bytes4)) != -1) {
        fos.write(bytes4, 0, read);
    }
    
    fos = new FileOutputStream(file5);
    is = part5.getInputStream();

     read = 0;
    final byte[] bytes5 = new byte[1024];

    while((read = is.read(bytes5)) != -1) {
        fos.write(bytes5, 0, read);
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

Connection con = null;
Statement st = null;
try {

	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
	st = con.createStatement();
	int id=(int)session.getAttribute("id");

	String sql = "INSERT INTO products_information(vendor_id, product_name, product_price, product_quantity, product_description, product_image1, product_image2, product_image3, product_image4, product_image5) VALUES("+ id+",'"
			+ name +"', "+price+" , "+quantity+", '" + description + "', '"+image1+"', '"+image2+"', '"+image3+"', '"+image4+"', '"+image5+"')";
	
	
	
	int result = st.executeUpdate(sql);
	if (result != 0) {
		//session.setAttribute("registration", true);
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
		if (st != null) {
			st.close();
		} // try
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