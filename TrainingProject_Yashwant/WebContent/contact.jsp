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
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		Connection con = null;
		Statement st = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
			st = con.createStatement();

			String sql = "INSERT INTO contact_information(con_fname, con_lname, con_email, con_subject, con_message) VALUES('"
					+ fname + "','" + lname + "', '" + email + "', '" + subject + "', '" + message + "')";
			int result = st.executeUpdate(sql);

			// ResultSet rs = st.executeQuery("SELECT * FROM cutomer_information");

			if (result != 0) {
				session.setAttribute("contact", true);
				response.sendRedirect("CustomerContact.jsp");
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