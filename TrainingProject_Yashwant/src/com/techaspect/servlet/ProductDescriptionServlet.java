package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techaspect.dao.ProductDao;
import com.techaspect.entity.Product;
import com.techaspect.entity.Vendor;

public class ProductDescriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		
		
		HttpSession session = request.getSession();
		
		int proid = Integer.parseInt(request.getParameter("product_id"));
		
			ProductDao productDao = new ProductDao();
		
		ArrayList<Product> productList = (ArrayList<Product>) productDao.viewProducts(proid);
		
		
		session.setAttribute("Productdescription", productList);
		
		
		response.sendRedirect("CustomerProductDescription.jsp");


	}//service method

}//ProductDescriptionServlet class
