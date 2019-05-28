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
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.apache.log4j.Logger;


/**
 * The ProductUpdateDao class contains the database operations
 * related code.
 * 
 * This class belongs to Vendor Module. 
 * 
 * @author  Yashwant
 */

public class ProductUpdateDao extends Dao  {

	private  static final Logger LOGGER = Logger.getLogger(VendorDao.class);

	DataSource datasource = getDataSource();
	
	

	public ProductUpdateDao() {
		System.out.println("ProductUpdateDao");
	
	}
	
	/**
	 * Updates product Record in the Table .
	 * 
     * @param   sql
     *          A String containing data.
     *
     * @return  boolean
     * 			true if record successfully Updated otherwise else.
     */

	public boolean productUpdate(String sql1) {
		
		LOGGER.debug("execution started");

		boolean status = false;
		
		Connection con = null;
		Statement stmt = null;
		
		try {
			con = datasource.getConnection();
			stmt = openStatement(con);
			
			int rows = stmt.executeUpdate(sql1);
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
		
	}// Product Update Method
}//Product Update Dao class
