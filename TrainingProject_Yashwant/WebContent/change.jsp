<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
		String oldpassword = request.getParameter("password");
		String npassword = request.getParameter("npassword");
		int id1 = (int) session.getAttribute("id");

		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
			st = con.createStatement();
			String sql1 = "SELECT * FROM customer_information WHERE cust_id = '" + id1 + "'";
			rs = st.executeQuery(sql1);

			rs.next();
			String check = rs.getString("cust_password");

			if (check.equals(oldpassword)) {

				String sql = "UPDATE customer_information SET cust_password = ('" + npassword
						+ "') WHERE cust_password=('" + check + "')AND cust_id='" + id1 + "'";
				int result = st.executeUpdate(sql);
				if (result != 0) {
					session.setAttribute("passwordchange", true);
					response.sendRedirect("personal.jsp");
	%>



	<%
		}

			} else {
				session.setAttribute("passwordchange", false);
				response.sendRedirect("personal.jsp");
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