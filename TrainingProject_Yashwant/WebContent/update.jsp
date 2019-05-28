<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
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
		String fname = request.getParameter("f1");
		String lname = request.getParameter("f2");
		String gender = request.getParameter("optradio");
		String address = request.getParameter("f3");
		String city = request.getParameter("f4");
		String zip = request.getParameter("f5");
		String state = request.getParameter("f6");
		String country = request.getParameter("f7");
		String contact = request.getParameter("f9");
		String email = request.getParameter("f10");
		int id1 = (int) session.getAttribute("id");

		Connection con = null;
		Statement st = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
			st = con.createStatement();

			String sql = "INSERT INTO address_information(add_address, cust_id, add_city, add_zip, add_state, add_country) VALUES('"
					+ address + "','" + id1 + "','" + city + "', '" + zip + "', '" + state + "', '" + country
					+ "')";
			int result = st.executeUpdate(sql);
			String sql1 = "UPDATE customer_information SET cust_fname = ('" + fname + "'),cust_lname =('" + lname
					+ "'),cust_email =('" + email + "'),cust_contact =('" + contact + "') WHERE cust_id="+id1+"";

			int result1 = st.executeUpdate(sql1);

			// ResultSet rs = st.executeQuery("SELECT * FROM cutomer_information");

			if (result != 0) {
				session.setAttribute("detailsupdated", true);
				response.sendRedirect("personal.jsp");
	%>

	<%
		} //if
	%>
	<%
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