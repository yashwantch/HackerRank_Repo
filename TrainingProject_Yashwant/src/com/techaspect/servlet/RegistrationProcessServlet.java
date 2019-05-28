package com.techaspect.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.techaspect.dao.RegisterDao;
import com.techaspect.entity.Customer;
import com.techaspect.service.EmailService;

public class RegistrationProcessServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private  static final Logger LOGGER = Logger.getLogger(RegistrationProcessServlet.class);


	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		String name = req.getParameter("f1");
		String email = req.getParameter("f2");
		String password = req.getParameter("f3");
		String[] split = name.split(" ");
		String fname = split[0];
		String lname = split[1];
		
		LOGGER.debug(req.getRemoteAddr());

		
		Customer customer = new Customer();
		 customer.setFirstName(fname);
		 customer.setLastName(lname);
		 customer.setEmail(email);
		 customer.setPassword(password);
		 
		 RegisterDao registerD = RegisterDao.getInstance();
		 
		 boolean status = registerD.registration(customer);
		 
		HttpSession session= req.getSession();
		
		

			if (status) {
				EmailService em = new EmailService();
				em.sendWelcomeMailToCustomer(customer);
				session.setAttribute("registration", true);
				res.sendRedirect("index.jsp");
			}

	}// service method

}//  RegistrationProcessServlet class
