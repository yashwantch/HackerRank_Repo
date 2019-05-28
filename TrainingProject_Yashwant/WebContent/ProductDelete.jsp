<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
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
				Connection con = null;
				Statement st = null;
				ResultSet rs= null;
				 int id1 =Integer.parseInt(request.getParameter("f2"));
				try {

					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
					st = con.createStatement();
					String sql="DELETE  FROM products_information WHERE product_id="+id1+"";
					int result=st.executeUpdate(sql);
					
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