package com.techaspect.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.techaspect.dao.ContactDao;
import com.techaspect.entity.Contact;
public class ContactProcessServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private  static final Logger LOGGER = Logger.getLogger(ContactProcessServlet.class);


	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");

		LOGGER.debug(req.getRemoteAddr());

		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String email = req.getParameter("email");
		String subject = req.getParameter("subject");
		String message = req.getParameter("message");
		
		
		Contact contact = new Contact();
		contact.setContFname(fname);
		contact.setContLname(lname);
		contact.setEmail(email);
		contact.setSubject(subject);
		contact.setMessage(message);
		
		
		ContactDao contactDao = new ContactDao();
		
		boolean status = contactDao.messageInsert(contact);
		
		
		

			if (status) {
				
				HttpSession session= req.getSession();
				
				session.setAttribute("contact", true);
				res.sendRedirect("CustomerContact.jsp");
				
			}

		

	}// service Method

}// ContactProcessServlet class
