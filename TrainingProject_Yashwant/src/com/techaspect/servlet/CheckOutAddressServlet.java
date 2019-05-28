package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techaspect.dao.AddressDao;
import com.techaspect.entity.Customer;


public class CheckOutAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	   
	   HttpSession session =request.getSession();		
		Customer customer1 = (Customer)session.getAttribute("CUSTOMERDATA");
		
		
		if(customer1==null){
			response.sendRedirect("CheckOutAddress.jsp");

			
		}
		else {
			
			int id1= customer1.getId();
		
		AddressDao addressdao = new AddressDao();
		ArrayList addre = (ArrayList) addressdao.getAddress(id1);
		
		session.setAttribute("address", addre);
		response.sendRedirect("CheckOutAddress.jsp");

		}


	}//Service Method

}//CheckOutAddressServlet Class
