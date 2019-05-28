package com.techaspect.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.techaspect.dao.CustomerDao;
import com.techaspect.entity.Customer;
public class ChangePasswordServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private  static final Logger LOGGER = Logger.getLogger(ChangePasswordServlet.class);


	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");

		LOGGER.debug(req.getRemoteAddr());

		String oldpassword = req.getParameter("password");
		String npassword = req.getParameter("npassword");
		HttpSession session = req.getSession();

		Customer customer = (Customer)session.getAttribute("CUSTOMERDATA");
		int id1=customer.getId();
		
			customer.setId(id1);
		
			CustomerDao passwordDao = new CustomerDao();
		
		boolean status = passwordDao.changepassword(customer,oldpassword, npassword );
	
			if(status) {
			
				session.setAttribute("passwordchange", true);
				RequestDispatcher rd = req.getRequestDispatcher("personal.jsp");

				rd.forward(req, res);

				}
				
				else{
					session.setAttribute("passwordchange", false);
				}
	}// service

}// ChangePasswordServlet class



