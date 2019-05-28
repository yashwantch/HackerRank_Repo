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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;

import com.techaspect.entity.Address;
import com.techaspect.entity.Customer;


/**
 * The AddressDao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer Module. 
 * 
 * @author  Yashwant
 */

public class AddressDao  extends Dao{
	
	private  static final Logger LOGGER = Logger.getLogger(AddressDao.class);
	
	DataSource datasource = getDataSource();
	
	
	
	
	
	public AddressDao() {
		
		System.out.println("AddressDao");
	
	}


	/**
	 * If Not Present Inserts Customer  Address Record in the Tables .
	 * 
     * If Present Update Customer Address in the Tables.
     * 
     * @param   customer
     *          A Customer object containing data.
     *          
     * @param   Address
     *          A Address object containing data.
     *
     * @return  boolean
     * 			true if record successfully inserted or Updated otherwise else.
     */
	
	public boolean update(Customer customer , Address address1 ) {
		
		String sql=" ";
		
		int customerid=address1.getCid();
		
			boolean status = false;
		
			LOGGER.debug("execution started");
			
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			int counter=0;
		
		try {
			con = datasource.getConnection();
			stmt = openStatement(con);
			
			
			String sql2= "SELECT * from address_information";
			 rs= stmt.executeQuery(sql2);
			
			 while(rs.next()) {
				 
				 if(rs.getInt("cust_id")==customerid) {
					 
					 counter++;
				 }
				 else {
					 counter=0;
				 }
				 
			 }
			
	
			 if(counter==0) {
				 
				  sql = "INSERT INTO address_information(add_address, cust_id, add_city, add_zip, add_state, add_country) VALUES('"
					+ address1.getAddressDetails() + "',"+ address1.getCid()+",'" + address1.getCity() + "', '" + address1.getZip() + "', '" + address1.getState() + "', '"+address1.getCountry()+"')";
			 }
			 else {
				 
				 sql="UPDATE address_information SET add_address = ('" + address1.getAddressDetails() +"'), add_city =('"+address1.getCity()+"'),add_zip =('"+address1.getZip()+"'),add_state =('"+address1.getState()+"'),add_country =('"+address1.getCountry()+"') WHERE cust_id="+customerid+"";
				 
			 }
			int result = stmt.executeUpdate(sql);
			
			String sql1="UPDATE customer_information SET cust_fname = ('" + customer.getFirstName() +"'),cust_lname =('"+customer.getLastName()+"'),cust_email =('"+customer.getEmail()+"'),cust_contact =('"+customer.getContact()+"') WHERE cust_id="+address1.getCid()+"";

			int result1=stmt.executeUpdate(sql1);
			
			if(result !=0 && result1 !=0) {
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
	}//Update Method
	
	
	/**
     * Retrieves  Customer Address based on Customer ID from the Table.
     * 
     * @return  List
     * 		    A List Type collection consisting of Address Object.
     */
	
	
public List<Address> getAddress(int id1) {
			
			LOGGER.debug("execution started");
			
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			ArrayList<Address> addressList= new ArrayList<>();

		
		try {
			con = datasource.getConnection();
			stmt = openStatement(con);
			
			
			String sql2= "SELECT * from address_information WHERE cust_id="+id1+"";
			 
			rs= stmt.executeQuery(sql2);
			
			 while(rs.next()) {
				 Address add = new Address();
				 
				 add.setAddressDetails(rs.getString("add_address"));
				 add.setCity(rs.getString("add_city"));
				 add.setCountry(rs.getString("add_country"));
				 add.setState(rs.getString("add_state"));
				 add.setZip(rs.getString("add_zip"));
				 
				 
				 addressList.add(add);
				 
			 }//while
			

	} catch(SQLException sqle) {
		LOGGER.error("EXCEPTION OCCURED",sqle);
	} finally {
		closeStatement(stmt);
		closeConnection(con);
	}
	
		LOGGER.debug("execution ended");
	return addressList;
	}// Get Address method
	
	
}//AddressDao class
