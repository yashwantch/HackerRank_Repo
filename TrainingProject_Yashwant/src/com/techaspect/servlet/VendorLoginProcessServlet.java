package com.techaspect.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.techaspect.dao.VendorDao;
import com.techaspect.entity.Vendor;

public class VendorLoginProcessServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private  static final Logger LOGGER = Logger.getLogger(VendorLoginProcessServlet.class);

	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		res.setContentType("text/html");
		
		LOGGER.debug(req.getRemoteAddr());
		HttpSession session =req.getSession();
		
		session.setAttribute("is_logged_in", false);

		Vendor vendor ;
		VendorDao vendordao = new VendorDao();


		
		String cemail = (String) session.getAttribute("EMAIL");
		
		String email="";
		String password="";
		String encryptedtext="";
		String sql="";
		if( cemail == null) {
			
			 email = req.getParameter("f1");
			 encryptedtext = vendordao.encryptText(email);
			 password = req.getParameter("f2");
			 
				 sql = "SELECT * FROM vendor_information WHERE vendor_email ='"+email+"' AND vendor_password= '"+password+"'";

				 vendor = vendordao.selectVendorByEmailAndPassword(sql);
		}	
		else {
			
			String decryptedtext = vendordao.decryptText(cemail);

			 sql = "SELECT * FROM vendor_information WHERE vendor_email ='"+decryptedtext+"'";
			 
			 vendor = vendordao.selectVendorByEmailAndPassword(sql);

		}
		
		

					
		String staySignedIn = req.getParameter("f3");
		

		if(staySignedIn != null) {
			
			Cookie cookie = new Cookie("vendor",encryptedtext);
			cookie.setMaxAge(60 * 60 * 24 * 30);

			
			res.addCookie(cookie);
		}//if
		

			 
			
			if(vendor!=null) {
				session.setAttribute("VendorDATA", vendor);
				 session.setAttribute("is_logged_in", true);
				 res.sendRedirect("VendorHomePage.jsp");
				 

			 }
			 else {
				
				 
				 if (session.getAttribute("is_logged_in") != null
							&& ((Boolean) session.getAttribute("is_logged_in")) == true) {
						res.sendRedirect("VendorHomePage.jsp");


	
			} else {
				
						session.setAttribute("is_logged_in", false);
						res.sendRedirect("vendorloginform.jsp");
					}
				 
			 }//else
				 
	}// service method

}//VendorLoginProcessServlet class
