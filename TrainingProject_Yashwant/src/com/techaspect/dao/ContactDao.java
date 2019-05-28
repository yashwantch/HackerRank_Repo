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
import com.techaspect.entity.Contact;


/**
 * The ContactDao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer Module. 
 * 
 * @author  Yashwant
 */


public class ContactDao extends Dao {
	
	private  static final Logger LOGGER = Logger.getLogger(ContactDao.class);
	
	DataSource datasource = getDataSource();
	
	

	public ContactDao() {
		System.out.println("ContactDao");
	
	}
	
	/**
	 * Inserts Customer  Problem Messages  in the Table.
     * 
     * @param   contact
     *          A Contact object containing data.
     *          
     * @return  boolean
     * 			true if record successfully inserted  otherwise else.
     */


	public boolean messageInsert(Contact contact) {
		
		boolean status = false;
		
		LOGGER.debug("execution started");
		
		Connection con = null;
		PreparedStatement stmt = null;
		String sql = "INSERT INTO contact_information(con_fname, con_lname, con_email, con_subject, con_message) VALUES(?,?,?,?,?)";		
		try {
			con = datasource.getConnection();
			stmt = openPreparedStatement(con,sql);
		
			stmt.setString(1, contact.getContFname());
			stmt.setString(2, contact.getContLname());
			stmt.setString(3, contact.getEmail());
			stmt.setString(4, contact.getSubject());
			stmt.setString(5, contact.getMessage());
			
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
		
	}//MessageInsert
}//ContactDao class
