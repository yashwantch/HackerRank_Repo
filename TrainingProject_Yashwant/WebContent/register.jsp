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
String name = request.getParameter("f1");
String email = request.getParameter("f2");
String password = request.getParameter("f3");
String split[] = name.split(" ");
String fname = split[0];
String lname = split[1];

Connection con = null;
Statement st = null;
try {

	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
	st = con.createStatement();

	String sql = "INSERT INTO customer_information(cust_fname, cust_lname, cust_email, cust_password) VALUES('"
			+ fname + "','" + lname + "', '" + email + "', '" + password + "')";
	int result = st.executeUpdate(sql);

	// ResultSet rs = st.executeQuery("SELECT * FROM cutomer_information");

	if (result != 0) {
		session.setAttribute("registration", true);
		response.sendRedirect("index.jsp");
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