package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.techaspect.dao.VendorDao;
import com.techaspect.entity.Vendor;


public class VendorEditServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private  static final Logger LOGGER = Logger.getLogger(VendorEditServlet.class);


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
										
								HttpSession session =request.getSession();
								Vendor vendor = (Vendor)session.getAttribute("VendorDATA");
								
								LOGGER.debug(request.getRemoteAddr());

								
								int id=vendor.getId();
								
								vendor.setId(id);
								
								VendorDao vd =new VendorDao();
								
								ArrayList arr = (ArrayList) vd.vendorEdit(vendor);

								session.setAttribute("ProductDATA", arr);
								response.sendRedirect("VendorProductList.jsp");
								

	}//service method

}//VendorEditServlet class
