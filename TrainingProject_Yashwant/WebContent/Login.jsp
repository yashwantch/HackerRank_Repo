<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!String fname;
	String lname;%>

	<%
		String email = request.getParameter("f1");
		String password = request.getParameter("f2");
		session.setAttribute("isloggedin", false);
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
			st = con.createStatement();

			String sql = "SELECT * FROM customer_information WHERE cust_email ='" + email + "' AND cust_password='"
					+ password + "'";
			rs = st.executeQuery(sql);

			if (rs.next()) {

				fname = rs.getString(2);
				lname = rs.getString(3);
				int id = rs.getInt(1);
				session.setAttribute("fname", fname);
				session.setAttribute("lname", lname);
				session.setAttribute("id", id);
				session.setAttribute("isloggedin", true);
				response.sendRedirect("CustomerHomePage.jsp");
	%>

	<%
		} else {
				if (session.getAttribute("isloggedin") != null
						&& ((Boolean) session.getAttribute("isloggedin")) == true) {
					response.sendRedirect("CustomerHomePage.jsp");
	%>

	<%
		} else {
					session.setAttribute("isloggedin", false);
					response.sendRedirect("index.jsp");
				}
	%>

	<%
		} //else
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();

		} catch (SQLException sqle) {
			sqle.printStackTrace();

		} finally {
			try {
				if (rs != null) {
					rs.close();
				}

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