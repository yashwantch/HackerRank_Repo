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


import com.techaspect.entity.Product;


/**
 * The ProductDeleteDao class contains the database operations
 * related code.
 * 
 * This class belongs to Vendor Module. 
 * 
 * @author  Yashwant
 */

public class ProductDeleteDao  extends Dao{
	
	private  static final Logger LOGGER = Logger.getLogger(ProductDeleteDao.class);

	DataSource datasource = getDataSource();
	
	
	public ProductDeleteDao() {
		System.out.println("ProductDeleteDao");
	}


	/**
	 * Deletes product Record in the Table .
	 * 
     * @param   product
     *          A product object containing data.
     *
     * @return  boolean
     * 			true if record successfully deleted otherwise else.
     */

	
	public boolean productDelete(Product product) {
		
		LOGGER.debug("execution started");


		boolean status = false;
		Connection con = null;
		PreparedStatement stmt = null;
		
		String sql="DELETE  FROM products_information WHERE product_id=?";
		
		try {
			con = datasource.getConnection();
			stmt = openPreparedStatement(con,sql);
			
			stmt.setInt(1, product.getPid());

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
		
		
	}//Product Delete method

}//Product DeleteDao class
