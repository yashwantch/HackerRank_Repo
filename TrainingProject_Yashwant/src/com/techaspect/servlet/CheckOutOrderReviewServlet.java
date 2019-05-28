package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techaspect.dao.CustomerDao;


public class CheckOutOrderReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
    	HttpSession session =request.getSession();
		
		Object obj =session.getAttribute("selected1");
		String[] selected1 =(String[])obj;
		
		CustomerDao cud =new CustomerDao();
		
		ArrayList details_review = (ArrayList) cud.orderDetails(selected1);
		session.setAttribute("details1", details_review);
		response.sendRedirect("CheckOutOrderReview.jsp");
		
	}//service method

}//CheckOutOrderReviewServlet class
