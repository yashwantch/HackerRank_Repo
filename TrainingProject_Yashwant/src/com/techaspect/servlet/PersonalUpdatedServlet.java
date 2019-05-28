package com.techaspect.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.techaspect.dao.AddressDao;
import com.techaspect.entity.Address;
import com.techaspect.entity.Customer;

public class PersonalUpdatedServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private  static final Logger LOGGER = Logger.getLogger(PersonalUpdatedServlet.class);


	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		
		LOGGER.debug(req.getRemoteAddr());

		
		HttpSession session =req.getSession();		
		Customer customer1 = (Customer)session.getAttribute("CUSTOMERDATA");
		int id1= customer1.getId();

		String fname = req.getParameter("f1");
		String lname = req.getParameter("f2");
		String gender = req.getParameter("optradio");
		String address = req.getParameter("f3");
		String city = req.getParameter("f4");
		String zip = req.getParameter("f5");
		String state = req.getParameter("f6");
		String country = req.getParameter("f7");
		String contact = req.getParameter("f9");
		String email= req.getParameter("f10");

		Customer customer = new Customer();
		customer.setFirstName(fname);
		customer.setLastName(lname);
		customer.setContact(contact);
		customer.setEmail(email);
		customer.setGender(gender);
		
		
		Address address1 = new Address();
		address1.setCid(id1);
		address1.setCity(city);
		address1.setAddressDetails(address);
		address1.setState(state);
		address1.setCountry(country);
		address1.setZip(zip);
		


			AddressDao addressdao = new AddressDao();
			Boolean status = addressdao.update(customer, address1);

			if (status) {
				
				session.setAttribute("detailsupdated", true);
				res.sendRedirect("personal.jsp");
			}

		
	}// service method

}// PersonalUpdatedServlet class
