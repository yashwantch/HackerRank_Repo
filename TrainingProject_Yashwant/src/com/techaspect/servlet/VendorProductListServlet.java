package com.techaspect.servlet;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.techaspect.dao.ProductDao;
import com.techaspect.entity.Product;
import com.techaspect.entity.Vendor;

public class VendorProductListServlet extends HttpServlet {
	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		
		HttpSession session = req.getSession();
		Vendor vendor = (Vendor)session.getAttribute("VendorDATA");
		int str=vendor.getId();
		Product product=new Product();
		product.setVid(str);
			ProductDao productDao = new ProductDao();
		
		ArrayList<Product> productList = (ArrayList<Product>) productDao.selectAllProducts(product);
		
		
		session.setAttribute("ProductDATA", productList);
		
		
		resp.sendRedirect("VendorProductList.jsp");


		
		}//service method
	}//VendorProductListServlet class

