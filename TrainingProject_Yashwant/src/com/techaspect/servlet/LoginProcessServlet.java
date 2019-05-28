package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.techaspect.dao.CustomerDao;
import com.techaspect.entity.Customer;
public class LoginProcessServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private  static final Logger LOGGER = Logger.getLogger(LoginProcessServlet.class);
 @Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		
		LOGGER.debug(req.getRemoteAddr());
		
		String email="";
		String password="";
		String sql="";
		HttpSession session =req.getSession();
		String cemail = (String) session.getAttribute("EMAIL");
		Customer customer;
		CustomerDao customerD = CustomerDao.getInstance();

		ArrayList pro = (ArrayList) customerD.pageEdit();
		
		session.setAttribute("is_logged_in", false);
		session.setAttribute("homepage", pro);
		
		if(cemail == null) {
		 email = req.getParameter("f1");
		 password = req.getParameter("f2");
		 sql = "SELECT * FROM customer_information WHERE cust_email ='"+email+"' AND cust_password= '"+password+"'";
		}
		else {
			 sql = "SELECT * FROM customer_information WHERE cust_email ='"+cemail+"'";
		}
		customer = customerD.selectCustomerByEmailAndPassword(sql);
		
		String staySignedIn = req.getParameter("f3");
		

		if(staySignedIn != null) {
			Cookie cookie = new Cookie("customer", email);
			cookie.setMaxAge(60 * 60 * 24 * 30);
			res.addCookie(cookie);
		}//if
			 if(customer.getFirstName()!=null) {
					session.setAttribute("CUSTOMERDATA", customer);
				 session.setAttribute("is_logged_in", true);
				 res.sendRedirect("CustomerHomePage.jsp");
			 }
			 else {
				 if (session.getAttribute("is_logged_in") != null
							&& ((Boolean) session.getAttribute("is_logged_in"))==true) {
					 res.sendRedirect("CustomerHomePage.jsp");
			} else {
						session.setAttribute("is_logged_in", false);
						res.sendRedirect("index.jsp");
					}
			 }//else
	}// service method
}//  LoginProcessServlet class