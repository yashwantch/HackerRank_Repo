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

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDataSource;
import org.apache.commons.pool2.impl.GenericObjectPool;


import org.apache.log4j.Logger;

/**
 * The Dao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer and Vendor Module. 
 * 
 * @author  Yashwant
 */

public class Dao {
	
	private  static final Logger LOGGER = Logger.getLogger(Dao.class);

private static DataSource dataSource = null;
	
	static {
		Properties properties = new Properties();
		
		InputStream inputStream = Dao.class.getClassLoader().getResourceAsStream("db.properties");
		
		try {
			properties.load(inputStream);
		} catch (IOException ioe) {
			LOGGER.error("EXCEPTION OCCURED",ioe);
		}
		
		DriverManagerConnectionFactory connectionFactory = new DriverManagerConnectionFactory(properties.getProperty("jdbc.url"), properties.getProperty("jdbc.username"), properties.getProperty("jdbc.password"));
		PoolableConnectionFactory poolableConnectionFactory = new PoolableConnectionFactory(connectionFactory, null);
		GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<>(poolableConnectionFactory);
		connectionPool.setMaxTotal(5);
		poolableConnectionFactory.setPool(connectionPool);
		
		PoolingDataSource<PoolableConnection> poolingDataSource = new PoolingDataSource<>(connectionPool);
		dataSource = poolingDataSource;
	}//Static Block
	
	protected static DataSource getDataSource() {
		return dataSource;	
	}//getDataSource Method
	
	protected static void shutdownDataSource() {
		PoolingDataSource<PoolableConnection> poolingDataSource = (PoolingDataSource) dataSource;
		try {
			poolingDataSource.close();
		} catch (Exception e) {
			LOGGER.error("EXCEPTION OCCURED",e);
		}
	}//shutdownDataSource Method
	
	protected Statement openStatement(Connection con) {
		if(con != null) {
			try {
				return con.createStatement();
			
			}  catch(SQLException sqle) {
				LOGGER.error("EXCEPTION OCCURED",sqle);
			}
		}
		
		return null;
	}//open statement Method
	
	
	protected PreparedStatement openPreparedStatement(Connection con ,String sql) {
		if(con != null) {
			try {
				return  con.prepareStatement(sql);
			
			}  catch(SQLException sqle) {
				LOGGER.error("EXCEPTION OCCURED",sqle);
			}
		}
		
		return null;
	}//Prepared Statement Method
	
	
	protected void closeConnection(Connection con) {
		if(con != null) {
			try {
				con.close();
			} catch(SQLException sqle) {
				LOGGER.error("EXCEPTION OCCURED",sqle);
			}
		}
	}//Close Connection Method
	
	protected void closeStatement(Statement stmt) {
		if(stmt != null) {
			try {
				stmt.close();
			} catch(SQLException sqle) {
				LOGGER.error("EXCEPTION OCCURED",sqle);
			}
		}
	}//Close Statement Method
	
	protected void closeResultSet(ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch(SQLException sqle) {
				LOGGER.error("EXCEPTION OCCURED",sqle);
			}
		}
	}//close Resultset Method
}//Dao class