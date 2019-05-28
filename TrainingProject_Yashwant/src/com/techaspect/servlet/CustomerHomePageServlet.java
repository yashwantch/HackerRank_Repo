package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import com.techaspect.dao.CustomerDao;

public class CustomerHomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private  static final Logger LOGGER = Logger.getLogger(VendorEditServlet.class);


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session =request.getSession();
		
		LOGGER.debug(request.getRemoteAddr());
		CustomerDao cd =new CustomerDao();
		
		
		
		
		ArrayList pro = (ArrayList) cd.pageEdit();

		session.setAttribute("homepage", pro);
		response.sendRedirect("CustomerHomePage.jsp");

	}//service method

}//CustomerHomePageServlet class
