package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techaspect.dao.ProductDao;
import com.techaspect.entity.Product;

public class CustomerShoppingCartServlet extends HttpServlet {

	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		HttpSession ses = req.getSession();
		ArrayList<Product> cartList = (ArrayList<Product>)ses.getAttribute("cart_list"); 
		String prodId = req.getParameter("product_id");
		String del = req.getParameter("del");
		if(prodId != null && del == null) {
			ProductDao prodDao = new ProductDao();
			Product product = prodDao.selectProduct(Integer.parseInt(prodId));
			if(cartList == null) {
				cartList = new ArrayList<>();
			}
			cartList.add(product);
			System.out.println(product.getName());
			ses.setAttribute("cart_list", cartList);
			RequestDispatcher rd = req.getRequestDispatcher("CustomerProductDescription.jsp");
			rd.forward(req, res);
		}
		
		else if(del != null && prodId != null) {
			for (Product product : cartList) {
				if(product.getPid() == Integer.parseInt(prodId)) {
					cartList.remove(product);
					break;
				}
			}
			ses.setAttribute("cart_list", cartList);
			RequestDispatcher rd = req.getRequestDispatcher("CustomerShoppingCart.jsp");
			rd.forward(req, res);
		}
		else {
			res.sendRedirect("Login.jsp");
		}		
	}// service method

}//CustomerShoppingCartServlet class
