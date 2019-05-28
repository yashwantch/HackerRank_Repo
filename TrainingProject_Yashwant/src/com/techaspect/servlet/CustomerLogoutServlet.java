package com.techaspect.servlet;

import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;


public class CustomerLogoutServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private  static final Logger LOGGER = Logger.getLogger(CustomerLogoutServlet.class);


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		LOGGER.debug(request.getRemoteAddr());

		HttpSession session= request.getSession();
		session.invalidate();
		session =request.getSession();
		session.setAttribute("logout", true);
		response.sendRedirect("index.jsp");
	}// service method

}//CustomerLogoutServlet class
