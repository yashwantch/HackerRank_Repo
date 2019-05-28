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

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;

import java.sql.PreparedStatement;
import com.techaspect.entity.Product;

/**
 * The ProductDao class contains the database operations
 * related code.
 * 
 * This class belongs to Vendor Module. 
 * 
 * @author  Yashwant
 */


public class ProductDao extends Dao implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private  static final Logger LOGGER = Logger.getLogger(ProductDao.class);
	DataSource datasource = getDataSource();

	

	public ProductDao() {
		
		System.out.println("ProductDao");
	
	}

/**
 * Retrieves all Product Records from the Table based on Vendor ID.
 * 
 * @return  List
 * 		    A List Type collection consisting of Product Objects.
 */	
	public List<Product> selectAllProducts(Product product) {
		
		LOGGER.debug("execution started");
		
		ArrayList<Product> productList = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		try {
			con = datasource.getConnection();
			String sql = "SELECT * FROM products_details WHERE vendor_id=?";
			pstmt = openPreparedStatement(con,sql);
			
			int vid=product.getVid();
			pstmt.setInt(1,vid);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				Product product1 = new Product();
				
				product1.setPid(rs.getInt("product_id"));
				product1.setName(rs.getString("product_name"));
				product1.setPrice(rs.getInt("product_price"));
				product1.setQuantity(rs.getInt("product_quantity"));
				product1.setDescription(rs.getString("product_description"));
				product1.setImage1(rs.getString("product_image1"));
				product1.setImage2(rs.getString("product_image2"));
				product1.setImage3(rs.getString("product_image3"));
				product1.setImage4(rs.getString("product_image4"));
				product1.setImage5(rs.getString("product_image5"));
				product1.setCategory(rs.getString("product_category"));
				product1.setSubcategory(rs.getString("product_subcategory"));
				product1.setDescp_title_1(rs.getString("descp_1_title"));
				product1.setDescp_title_2(rs.getString("descp_2_title"));
				product1.setDescp_title_3(rs.getString("descp_3_title"));
				product1.setDescp_title_4(rs.getString("descp_4_title"));
				product1.setDescp_title_5(rs.getString("descp_5_title"));
				product1.setDescp_title_6(rs.getString("descp_6_title"));
				product1.setDescp_title_7(rs.getString("descp_7_title"));
				product1.setDescp_title_8(rs.getString("descp_8_title"));
				product1.setDescp_title_9(rs.getString("descp_9_title"));
				product1.setDescp_title_10(rs.getString("descp_10_title"));
				product1.setDescp_content_1(rs.getString("descp_1_content"));
				product1.setDescp_content_2(rs.getString("descp_2_content"));
				product1.setDescp_content_3(rs.getString("descp_3_content"));
				product1.setDescp_content_4(rs.getString("descp_4_content"));
				product1.setDescp_content_5(rs.getString("descp_5_content"));
				product1.setDescp_content_6(rs.getString("descp_6_content"));
				product1.setDescp_content_7(rs.getString("descp_7_content"));
				product1.setDescp_content_8(rs.getString("descp_8_content"));
				product1.setDescp_content_9(rs.getString("descp_9_content"));
				product1.setDescp_content_10(rs.getString("descp_10_content"));
				product1.setSpec_3g(rs.getString("spec_3g"));
				product1.setSpec_audio_formats(rs.getString("spec_audio_formats"));
				product1.setSpec_audio_jack(rs.getString("spec_audio_jack"));
				product1.setSpec_battery_capacity(rs.getString("spec_battery_capacity"));
				product1.setSpec_battery_type(rs.getString("spec_battery_type"));
				product1.setSpec_bluetooth_support(rs.getString("spec_bluetooth_support"));
				product1.setSpec_bluetooth_version(rs.getString("spec_bluetooth_version"));
				product1.setSpec_browse_type(rs.getString("spec_browse_type"));
				product1.setSpec_calllog_memory(rs.getString("spec_calllog_memory"));
				product1.setSpec_color(rs.getString("spec_color"));
				product1.setSpec_depth(rs.getString("spec_depth"));
				product1.setSpec_display_colors(rs.getString("spec_display_colors"));
				product1.setSpec_display_size(rs.getString("spec_display_size"));
				product1.setSpec_display_type(rs.getString("spec_display_type"));
				product1.setSpec_expandable_storage(rs.getString("spec_expandable_storage"));
				product1.setSpec_flash(rs.getString("spec_flash"));
				product1.setSpec_frame_rate(rs.getString("spec_frame_rate"));
				product1.setSpec_full_hdrecording(rs.getString("spec_full_hdrecording"));
				product1.setSpec_gprs(rs.getString("spec_gprs"));
				product1.setSpec_hdrecording(rs.getString("spec_hdrecording"));
				product1.setSpec_height(rs.getString("spec_height"));
				product1.setSpec_important_apps(rs.getString("spec_important_apps"));
				product1.setSpec_in_the_box(rs.getString("spec_in_the_box"));
				product1.setSpec_internal_storage(rs.getString("spec_internal_storage"));
				product1.setSpec_internet_connectivity(rs.getString("spec_internet_connectivity"));
				product1.setSpec_model_name(rs.getString("spec_model_name"));
				product1.setSpec_model_number(rs.getString("spec_model_number"));
				product1.setSpec_network_type(rs.getString("spec_network_type"));
				product1.setSpec_nfc(rs.getString("spec_nfc"));
				product1.setSpec_operating_frequency(rs.getString("spec_operating_frequency"));
				product1.setSpec_operating_system(rs.getString("spec_operating_system"));
				product1.setSpec_other_features(rs.getString("spec_other_features"));
				product1.setSpec_phonebook(rs.getString("spec_phonebook"));
				product1.setSpec_preinstalled_browser(rs.getString("spec_preinstalled_browser"));
				product1.setSpec_primary_clockspeed(rs.getString("spec_primary_clockspeed"));
				product1.setSpec_primarycamera(rs.getString("spec_primarycamera"));
				product1.setSpec_primarycamera_available(rs.getString("spec_primarycamera_available"));
				product1.setSpec_primarycamera_features(rs.getString("spec_primarycamera_features"));
				product1.setSpec_processor_core(rs.getString("spec_processor_core"));
				product1.setSpec_processor_type(rs.getString("spec_processor_type"));
				product1.setSpec_ram(rs.getString("spec_ram"));
				product1.setSpec_removable_battery(rs.getString("spec_removable_battery"));
				product1.setSpec_resolution(rs.getString("spec_resolution"));
				product1.setSpec_resolution_type(rs.getString("spec_resolution_type"));
				product1.setSpec_secondary_clockspeed(rs.getString("spec_secondary_clockspeed"));
				product1.setSpec_secondarycamera(rs.getString("spec_secondarycamera"));
				product1.setSpec_secondarycamera_available(rs.getString("spec_secondarycamera_available"));
				product1.setSpec_secondarycamera_features(rs.getString("spec_secondarycamera_features"));
				product1.setSpec_sensors(rs.getString("spec_sensors"));
				product1.setSpec_sim_size(rs.getString("spec_sim_size"));
				product1.setSpec_sim_type(rs.getString("spec_sim_type"));
				product1.setSpec_smart_phone(rs.getString("spec_smart_phone"));
				product1.setSpec_sms(rs.getString("spec_sms"));
				product1.setSpec_supported_memorycardtype(rs.getString("spec_supported_memorycardtype"));
				product1.setSpec_supported_networks(rs.getString("spec_supported_networks"));
				product1.setSpec_touch_screen(rs.getString("spec_touch_screen"));
				product1.setSpec_usb_connectivity(rs.getString("spec_usb_connectivity"));
				product1.setSpec_video_formats(rs.getString("spec_video_formats"));
				product1.setSpec_video_recording(rs.getString("spec_video_recording"));
				product1.setSpec_videorecording_resolution(rs.getString("spec_videorecording_resolution"));
				product1.setSpec_warranty_summary(rs.getString("spec_warranty_summary"));
				product1.setSpec_weight(rs.getString("spec_weight"));
				product1.setSpec_width(rs.getString("spec_width"));
				product1.setSpec_wifi(rs.getString("spec_wifi"));
				product1.setSpec_wifi_version(rs.getString("spec_wifi_version"));
				
				
				
				productList.add(product1);
				
				
			}
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);
		} finally {
			closeResultSet(rs);
			closeStatement(pstmt);
			closeConnection(con);
		}
		
		LOGGER.debug("execution ended");
		return productList;
		
	}//selectAllProducts Methods
	

/**
 * Retrieves  Product Record from the Table based on Product id.
 * 
 * @param proid
 * 			A int contains Product ID
 * @return  List
 * 		    A List Type collection consisting of Product Object.
 */
	
	
public List<Product> viewProducts(int proid) {
		
		LOGGER.debug("execution started");
		
		
		ArrayList<Product> productList = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		try {
			con = datasource.getConnection();
			String sql = "SELECT * FROM products_details WHERE product_id = "+ proid+"";
			pstmt = openPreparedStatement(con,sql);
			
			
			
			rs = pstmt.executeQuery();
			rs.next(); 
				
				Product product1 = new Product();	
				
				product1.setPid(rs.getInt("product_id"));
				product1.setName(rs.getString("product_name"));
				product1.setPrice(rs.getInt("product_price"));
				product1.setQuantity(rs.getInt("product_quantity"));
				product1.setDescription(rs.getString("product_description"));
				product1.setImage1(rs.getString("product_image1"));
				product1.setImage2(rs.getString("product_image2"));
				product1.setImage3(rs.getString("product_image3"));
				product1.setImage4(rs.getString("product_image4"));
				product1.setImage5(rs.getString("product_image5"));
				product1.setCategory(rs.getString("product_category"));
				product1.setSubcategory(rs.getString("product_subcategory"));
				product1.setDescp_title_1(rs.getString("descp_1_title"));
				product1.setDescp_title_2(rs.getString("descp_2_title"));
				product1.setDescp_title_3(rs.getString("descp_3_title"));
				product1.setDescp_title_4(rs.getString("descp_4_title"));
				product1.setDescp_title_5(rs.getString("descp_5_title"));
				product1.setDescp_title_6(rs.getString("descp_6_title"));
				product1.setDescp_title_7(rs.getString("descp_7_title"));
				product1.setDescp_title_8(rs.getString("descp_8_title"));
				product1.setDescp_title_9(rs.getString("descp_9_title"));
				product1.setDescp_title_10(rs.getString("descp_10_title"));
				product1.setDescp_content_1(rs.getString("descp_1_content"));
				product1.setDescp_content_2(rs.getString("descp_2_content"));
				product1.setDescp_content_3(rs.getString("descp_3_content"));
				product1.setDescp_content_4(rs.getString("descp_4_content"));
				product1.setDescp_content_5(rs.getString("descp_5_content"));
				product1.setDescp_content_6(rs.getString("descp_6_content"));
				product1.setDescp_content_7(rs.getString("descp_7_content"));
				product1.setDescp_content_8(rs.getString("descp_8_content"));
				product1.setDescp_content_9(rs.getString("descp_9_content"));
				product1.setDescp_content_10(rs.getString("descp_10_content"));
				product1.setSpec_3g(rs.getString("spec_3g"));
				product1.setSpec_audio_formats(rs.getString("spec_audio_formats"));
				product1.setSpec_audio_jack(rs.getString("spec_audio_jack"));
				product1.setSpec_battery_capacity(rs.getString("spec_battery_capacity"));
				product1.setSpec_battery_type(rs.getString("spec_battery_type"));
				product1.setSpec_bluetooth_support(rs.getString("spec_bluetooth_support"));
				product1.setSpec_bluetooth_version(rs.getString("spec_bluetooth_version"));
				product1.setSpec_browse_type(rs.getString("spec_browse_type"));
				product1.setSpec_calllog_memory(rs.getString("spec_calllog_memory"));
				product1.setSpec_color(rs.getString("spec_color"));
				product1.setSpec_depth(rs.getString("spec_depth"));
				product1.setSpec_display_colors(rs.getString("spec_display_colors"));
				product1.setSpec_display_size(rs.getString("spec_display_size"));
				product1.setSpec_display_type(rs.getString("spec_display_type"));
				product1.setSpec_expandable_storage(rs.getString("spec_expandable_storage"));
				product1.setSpec_flash(rs.getString("spec_flash"));
				product1.setSpec_frame_rate(rs.getString("spec_frame_rate"));
				product1.setSpec_full_hdrecording(rs.getString("spec_full_hdrecording"));
				product1.setSpec_gprs(rs.getString("spec_gprs"));
				product1.setSpec_hdrecording(rs.getString("spec_hdrecording"));
				product1.setSpec_height(rs.getString("spec_height"));
				product1.setSpec_important_apps(rs.getString("spec_important_apps"));
				product1.setSpec_in_the_box(rs.getString("spec_in_the_box"));
				product1.setSpec_internal_storage(rs.getString("spec_internal_storage"));
				product1.setSpec_internet_connectivity(rs.getString("spec_internet_connectivity"));
				product1.setSpec_model_name(rs.getString("spec_model_name"));
				product1.setSpec_model_number(rs.getString("spec_model_number"));
				product1.setSpec_network_type(rs.getString("spec_network_type"));
				product1.setSpec_nfc(rs.getString("spec_nfc"));
				product1.setSpec_operating_frequency(rs.getString("spec_operating_frequency"));
				product1.setSpec_operating_system(rs.getString("spec_operating_system"));
				product1.setSpec_other_features(rs.getString("spec_other_features"));
				product1.setSpec_phonebook(rs.getString("spec_phonebook"));
				product1.setSpec_preinstalled_browser(rs.getString("spec_preinstalled_browser"));
				product1.setSpec_primary_clockspeed(rs.getString("spec_primary_clockspeed"));
				product1.setSpec_primarycamera(rs.getString("spec_primarycamera"));
				product1.setSpec_primarycamera_available(rs.getString("spec_primarycamera_available"));
				product1.setSpec_primarycamera_features(rs.getString("spec_primarycamera_features"));
				product1.setSpec_processor_core(rs.getString("spec_processor_core"));
				product1.setSpec_processor_type(rs.getString("spec_processor_type"));
				product1.setSpec_ram(rs.getString("spec_ram"));
				product1.setSpec_removable_battery(rs.getString("spec_removable_battery"));
				product1.setSpec_resolution(rs.getString("spec_resolution"));
				product1.setSpec_resolution_type(rs.getString("spec_resolution_type"));
				product1.setSpec_secondary_clockspeed(rs.getString("spec_secondary_clockspeed"));
				product1.setSpec_secondarycamera(rs.getString("spec_secondarycamera"));
				product1.setSpec_secondarycamera_available(rs.getString("spec_secondarycamera_available"));
				product1.setSpec_secondarycamera_features(rs.getString("spec_secondarycamera_features"));
				product1.setSpec_sensors(rs.getString("spec_sensors"));
				product1.setSpec_sim_size(rs.getString("spec_sim_size"));
				product1.setSpec_sim_type(rs.getString("spec_sim_type"));
				product1.setSpec_smart_phone(rs.getString("spec_smart_phone"));
				product1.setSpec_sms(rs.getString("spec_sms"));
				product1.setSpec_supported_memorycardtype(rs.getString("spec_supported_memorycardtype"));
				product1.setSpec_supported_networks(rs.getString("spec_supported_networks"));
				product1.setSpec_touch_screen(rs.getString("spec_touch_screen"));
				product1.setSpec_usb_connectivity(rs.getString("spec_usb_connectivity"));
				product1.setSpec_video_formats(rs.getString("spec_video_formats"));
				product1.setSpec_video_recording(rs.getString("spec_video_recording"));
				product1.setSpec_videorecording_resolution(rs.getString("spec_videorecording_resolution"));
				product1.setSpec_warranty_summary(rs.getString("spec_warranty_summary"));
				product1.setSpec_weight(rs.getString("spec_weight"));
				product1.setSpec_width(rs.getString("spec_width"));
				product1.setSpec_wifi(rs.getString("spec_wifi"));
				product1.setSpec_wifi_version(rs.getString("spec_wifi_version"));
				
				productList.add(product1);
				
			
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);
		} finally {
			closeResultSet(rs);
			closeStatement(pstmt);
			closeConnection(con);
		}
		
		LOGGER.debug("execution ended");
		return productList;
	}//View Products Method





/**
 * Retrieves  Product Record from the Table based on Product id.
 * 
 * @param proid
 * 			A int contains Product ID
 * 
 * @return  Object
 * 		    If true a Product Object otherwise else.
 */


public Product selectProduct(int pid) {
	Product prod = new Product();
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	try {
		con = datasource.getConnection();
		String sql = "SELECT * FROM products_details WHERE product_id = ?";
		stmt = openPreparedStatement(con,sql);
		stmt.setInt(1, pid);
		rs = stmt.executeQuery();
		while(rs.next()) {
			prod.setPid(rs.getInt("product_id"));
			prod.setName(rs.getString("product_name"));
			prod.setPrice(rs.getInt("product_price"));
			prod.setQuantity(rs.getInt("product_quantity"));
			prod.setDescription(rs.getString("product_description"));
			prod.setImage1(rs.getString("product_image1"));
			
		}
	} catch(SQLException sqle) {
		LOGGER.error("Exception Raised",sqle);
	} finally {
		closeResultSet(rs);
		closeStatement(stmt);
		closeConnection(con);
	}
	
	return prod;
}//select Product Method

	}//ProductDao class