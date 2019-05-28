package com.techaspect.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.techaspect.dao.ProductDeleteDao;
import com.techaspect.entity.Product;

public class VendorProductDeleteServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 int id1 =Integer.parseInt(request.getParameter("f2"));
		 
		 Product product = new Product();
		 product.setPid(id1);
		 
		 ProductDeleteDao pdd = new ProductDeleteDao();
		 boolean status = pdd.productDelete(product);
			
			if (status) {

				response.sendRedirect("ProductList");
			}

		
		
	}//service method

}// VendorProductDeleteServlet class