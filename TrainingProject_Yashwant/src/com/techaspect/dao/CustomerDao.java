/*
 * Copyright (c) 2018, TechAspect Solutions Private Limited. All Rights Reserved.
 * TECHASPECT SOLUTIONS PRIVATE LIMITED PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 */



package com.techaspect.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.apache.log4j.Logger;
import com.techaspect.entity.Customer;
import com.techaspect.entity.Product;


/**
 * The CustomerDao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer Module. 
 * 
 * @author  Yashwant
 */


public class CustomerDao extends Dao {
	
	private  static final Logger LOGGER = Logger.getLogger(CustomerDao.class);
	
	DataSource datasource = getDataSource();
	
	private static CustomerDao customerDao;

	public CustomerDao() {
		
		System.out.println("CustomerDao");
	
	}
	
	public static CustomerDao getInstance()
	{
		if(customerDao == null)
		{
			customerDao = new CustomerDao();
		}
		return customerDao;
	}
	
	/**
	 * Inserts Customer  Record in the Table .
	 * 
     * @param   customer
     *          A Customer object containing data.
     *
     * @return  boolean
     * 			true if record successfully inserted otherwise else.
     */

	
	public boolean insertCustomer(Customer customer) {
		
		LOGGER.debug("execution started");
		boolean status = false;
		
		
		Connection con = null;
	  PreparedStatement stmt = null;
		
		String sql = "INSERT INTO customer_information(cust_fname, cust_lname, cust_dob, cust_email, cust_pwd) VALUES(?,?,?,?,?)";
		
		try {
			con = datasource.getConnection();
			stmt =openPreparedStatement(con, sql);
			
			stmt.setString(1, customer.getFirstName());
			stmt.setString(2, customer.getLastName());
			stmt.setString(3, customer.getDateOfBirth());
			stmt.setString(4, customer.getEmail());
			stmt.setString(5, customer.getPassword());
			
			
			int rows = stmt.executeUpdate();
			if(rows != 0) {
				status = true;
			}
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		
		LOGGER.debug("execution ended");
		return status;
		
	}//InsertCustomer Method
	
	
	/**
     * Searches for a existing Customer Record in the Table.
     * 
     * If Cookie is not Set Searching is done on the basis of Email Address & Password.
     *
     * If Cookie is Set Searching is done on the basis of Cookie Value.
     *  
     * @param   sql
     *          A SQL query based on cookie .
     *
     * @return  Object
     * 		    true if matching record found otherwise else.
     */
	
	
	public Customer selectCustomerByEmailAndPassword(String sql) {
		
		LOGGER.debug("execution started");
		
		Customer customer =  new Customer();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = datasource.getConnection();
			stmt = openStatement(con);
		
			
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				customer.setDateOfBirth(rs.getString(4));
				customer.setGender(rs.getString(5));
				customer.setContact(rs.getString(7));
				customer.setEmail(rs.getString("cust_email"));
			}
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}
		
		LOGGER.debug("execution ended");
		return customer;
	
	}//selectCustomerByEmailAndPassword Method
	
	
	
	/**
	 * Changes Customer  Password  in the Table.
     * 
     * @param   customer
     *          A Customer object containing data.
     *          
     * @param   oldpassword
     *          A old password String.
     *          
     * @param   npassword
     *          A new password String.
     *          
     * @return  boolean
     * 			true if record successfully Updated  otherwise else.
     */
	
	
public boolean changepassword(Customer customer,String oldpassword, String npassword) {
		
	
		LOGGER.debug("execution started");
	
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs =null;
		boolean status = false;
		
		String sql="UPDATE customer_information SET cust_password = ? WHERE cust_password= ? AND cust_id= ?";
		
		try {
			con = datasource.getConnection();
			stmt = openPreparedStatement(con, sql);
			stmt.setString(1,npassword);
			stmt.setString(2, oldpassword);
			stmt.setInt(3, customer.getId());
		
						
			int result = stmt.executeUpdate();
				if(result !=0) {
					status = true;
				}
			
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}
		
		LOGGER.debug("execution ended");
		return status;
}//change password Method

/**
 * Retrieves all Customer Records from the Table.
 * 
 * @return  List
 * 		    A List Type collection consisting of Customer Objects.
 */
	public List<Customer> selectAllCustomers() {
		
		LOGGER.debug("execution started");
		
		ArrayList<Customer> customersList = new ArrayList<>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = datasource.getConnection();
			stmt = openStatement(con);
			
			String sql = "SELECT * FROM customer_information";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Customer customer = new Customer();
				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				customer.setDateOfBirth(rs.getString(4));
				customer.setEmail(rs.getString(5));
				customer.setPassword(rs.getString(6));
				
				
				customersList.add(customer);
			}
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}
		
		LOGGER.debug("execution ended");
		return customersList;
		
	}//selectAllCustomers Method
	
	
	/**
     * Retrieves all Product Records from the Table.
     * 
     * @return  List
     * 		    A List Type collection consisting of Product Objects.
     */
	
public List<Product> pageEdit() {
		
		LOGGER.debug("execution started");
		
		ArrayList<Product> pro= new ArrayList<>();
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql="SELECT * FROM products_details ";
		try {
			con = datasource.getConnection();
			stmt = openPreparedStatement(con, sql);
					
			rs = stmt.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setPid(rs.getInt("product_id"));
				product.setName(rs.getString("product_name"));
				product.setPrice(rs.getInt("product_price"));
				product.setImage1(rs.getString("product_image1"));
				
				
				

				pro.add(product);
				
			}//while
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);

		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}
		
		LOGGER.debug("execution ended");
		return pro;
		
	}//PageEdit Method


/**
 * Retrieves  Product Records from the Table based on User Selection.
 * 
 * @return  List
 * 		    A List Type collection consisting of Product Objects.
 */


public List<Product> orderDetails(String[] selected1) {
	
	LOGGER.debug("execution started");
	
	ArrayList<Product> det= new ArrayList<>();
	
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	
	try {
		con = datasource.getConnection();
		stmt = openStatement(con);
		
		for(int j=0;j<selected1.length;j++) {
			int i=Integer.parseInt(selected1[j]);
			String sql="SELECT * FROM products_details WHERE product_id ="+i+" ";			
			rs = stmt.executeQuery(sql);
			
		while(rs.next())
		{
			Product product = new Product();
			product.setPid(rs.getInt("product_id"));
			product.setName(rs.getString("product_name"));
			product.setPrice(rs.getInt("product_price"));
			product.setImage1(rs.getString("product_image1"));
			
			det.add(product);
			
		}//while
	}//for
	} catch(SQLException sqle) {
		LOGGER.error("EXCEPTION OCCURED",sqle);

	} finally {
		closeResultSet(rs);
		closeStatement(stmt);
		closeConnection(con);
	}
	
	LOGGER.debug("execution ended");
	return det;
	
}//order details Method
	
	
}//CustomerDao Class