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
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.log4j.Logger;
import com.techaspect.entity.Customer;

/**
 * The RegisterDao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer Module. 
 * 
 * @author  Yashwant
 */

public class RegisterDao extends Dao{
	
	private  static final Logger LOGGER = Logger.getLogger(RegisterDao.class);
	DataSource datasource = getDataSource();

	private static RegisterDao registerDao;
	
	private RegisterDao() {
		System.out.println("RegisterDao");
	
	}
	
	public static RegisterDao getInstance()
	{
		if(registerDao == null)
		{
			registerDao = new RegisterDao();
		}
		return registerDao;
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
	
	public  boolean registration(Customer customer) {
		
		LOGGER.debug("execution started");

		boolean status = false;
		
		Connection con = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO customer_information(cust_fname, cust_lname, cust_email, cust_password) VALUES(?,?,?,?)";
		
		try {
			con = datasource.getConnection();
			stmt = openPreparedStatement(con,sql);
			stmt.setString(1, customer.getFirstName());
			stmt.setString(2, customer.getLastName());
			stmt.setString(3, customer.getEmail());
			stmt.setString(4, customer.getPassword());
		
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
	}//Register Method
}//ReigsterDao Class
