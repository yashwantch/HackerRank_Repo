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

import com.techaspect.entity.Product;
import com.techaspect.entity.Vendor;

/**
 * The VendorDao class contains the database operations
 * related code.
 * 
 * This class belongs to Vendor Module. 
 * 
 * @author  Yashwant
 */

public class VendorDao extends Dao{
	
	
	private  static final Logger LOGGER = Logger.getLogger(VendorDao.class);

	
	DataSource datasource = getDataSource();
	


	public VendorDao() {
	
		System.out.println("VendorDao");
	}
	
	/**
     * Searches for a existing Vendor Record in the Table.
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
	
	
	public Vendor selectVendorByEmailAndPassword(String sql) {
		
		LOGGER.debug("execution started");
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vendor vendor= new Vendor();
				
		try {
			con = datasource.getConnection();
			stmt = openStatement(con);
	
			
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				
				vendor.setId(rs.getInt(1));
				vendor.setFirstName(rs.getString(2));
				vendor.setLastName(rs.getString(3));
				vendor.setEmail(rs.getString(4));
				vendor.setContact(rs.getString(5));
			}
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}
		LOGGER.debug("execution ended");
		return vendor;
		
	}//selectVendorByEmailAndPassword Method
	
	
	

/**
 * Retrieves all Product Records from the Table based on Vendor ID.
 * 
 * @return  List
 * 		    A List Type collection consisting of Product Objects.
 */
	
	public List<Product> vendorEdit(Vendor vendor) {
		
		LOGGER.debug("execution started");
		
		ArrayList<Product> ar= new ArrayList<>();
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql="SELECT * FROM products_details WHERE vendor_id= ? ";
		try {
			
			con = datasource.getConnection();
			stmt = openPreparedStatement(con, sql);
			
			stmt.setInt(1, vendor.getId());
			
			
			rs = stmt.executeQuery();
			while(rs.next())
			{
				Product product = new Product();
				product.setPid(rs.getInt("product_id"));
				product.setName(rs.getString("product_name"));
				product.setPrice(rs.getInt("product_price"));
				product.setQuantity(rs.getInt("product_quantity"));
				product.setDescription(rs.getString("product_description"));
				product.setImage1(rs.getString("product_image1"));
				product.setImage2(rs.getString("product_image2"));
				product.setImage3(rs.getString("product_image3"));
				product.setImage4(rs.getString("product_image4"));
				product.setImage5(rs.getString("product_image5"));
				product.setCategory(rs.getString("product_category"));
				product.setSubcategory(rs.getString("product_subcategory"));
				product.setDescp_title_1(rs.getString("descp_1_title"));
				product.setDescp_title_2(rs.getString("descp_2_title"));
				product.setDescp_title_3(rs.getString("descp_3_title"));
				product.setDescp_title_4(rs.getString("descp_4_title"));
				product.setDescp_title_5(rs.getString("descp_5_title"));
				product.setDescp_title_6(rs.getString("descp_6_title"));
				product.setDescp_title_7(rs.getString("descp_7_title"));
				product.setDescp_title_8(rs.getString("descp_8_title"));
				product.setDescp_title_9(rs.getString("descp_9_title"));
				product.setDescp_title_10(rs.getString("descp_10_title"));
				product.setDescp_content_1(rs.getString("descp_1_content"));
				product.setDescp_content_2(rs.getString("descp_2_content"));
				product.setDescp_content_3(rs.getString("descp_3_content"));
				product.setDescp_content_4(rs.getString("descp_4_content"));
				product.setDescp_content_5(rs.getString("descp_5_content"));
				product.setDescp_content_6(rs.getString("descp_6_content"));
				product.setDescp_content_7(rs.getString("descp_7_content"));
				product.setDescp_content_8(rs.getString("descp_8_content"));
				product.setDescp_content_9(rs.getString("descp_9_content"));
				product.setDescp_content_10(rs.getString("descp_10_content"));
				product.setSpec_3g(rs.getString("spec_3g"));
				product.setSpec_audio_formats(rs.getString("spec_audio_formats"));
				product.setSpec_audio_jack(rs.getString("spec_audio_jack"));
				product.setSpec_battery_capacity(rs.getString("spec_battery_capacity"));
				product.setSpec_battery_type(rs.getString("spec_battery_type"));
				product.setSpec_bluetooth_support(rs.getString("spec_bluetooth_support"));
				product.setSpec_bluetooth_version(rs.getString("spec_bluetooth_version"));
				product.setSpec_browse_type(rs.getString("spec_browse_type"));
				product.setSpec_calllog_memory(rs.getString("spec_calllog_memory"));
				product.setSpec_color(rs.getString("spec_color"));
				product.setSpec_depth(rs.getString("spec_depth"));
				product.setSpec_display_colors(rs.getString("spec_display_colors"));
				product.setSpec_display_size(rs.getString("spec_display_size"));
				product.setSpec_display_type(rs.getString("spec_display_type"));
				product.setSpec_expandable_storage(rs.getString("spec_expandable_storage"));
				product.setSpec_flash(rs.getString("spec_flash"));
				product.setSpec_frame_rate(rs.getString("spec_frame_rate"));
				product.setSpec_full_hdrecording(rs.getString("spec_full_hdrecording"));
				product.setSpec_gprs(rs.getString("spec_gprs"));
				product.setSpec_hdrecording(rs.getString("spec_hdrecording"));
				product.setSpec_height(rs.getString("spec_height"));
				product.setSpec_important_apps(rs.getString("spec_important_apps"));
				product.setSpec_in_the_box(rs.getString("spec_in_the_box"));
				product.setSpec_internal_storage(rs.getString("spec_internal_storage"));
				product.setSpec_internet_connectivity(rs.getString("spec_internet_connectivity"));
				product.setSpec_model_name(rs.getString("spec_model_name"));
				product.setSpec_model_number(rs.getString("spec_model_number"));
				product.setSpec_network_type(rs.getString("spec_network_type"));
				product.setSpec_nfc(rs.getString("spec_nfc"));
				product.setSpec_operating_frequency(rs.getString("spec_operating_frequency"));
				product.setSpec_operating_system(rs.getString("spec_operating_system"));
				product.setSpec_other_features(rs.getString("spec_other_features"));
				product.setSpec_phonebook(rs.getString("spec_phonebook"));
				product.setSpec_preinstalled_browser(rs.getString("spec_preinstalled_browser"));
				product.setSpec_primary_clockspeed(rs.getString("spec_primary_clockspeed"));
				product.setSpec_primarycamera(rs.getString("spec_primarycamera"));
				product.setSpec_primarycamera_available(rs.getString("spec_primarycamera_available"));
				product.setSpec_primarycamera_features(rs.getString("spec_primarycamera_features"));
				product.setSpec_processor_core(rs.getString("spec_processor_core"));
				product.setSpec_processor_type(rs.getString("spec_processor_type"));
				product.setSpec_ram(rs.getString("spec_ram"));
				product.setSpec_removable_battery(rs.getString("spec_removable_battery"));
				product.setSpec_resolution(rs.getString("spec_resolution"));
				product.setSpec_resolution_type(rs.getString("spec_resolution_type"));
				product.setSpec_secondary_clockspeed(rs.getString("spec_secondary_clockspeed"));
				product.setSpec_secondarycamera(rs.getString("spec_secondarycamera"));
				product.setSpec_secondarycamera_available(rs.getString("spec_secondarycamera_available"));
				product.setSpec_secondarycamera_features(rs.getString("spec_secondarycamera_features"));
				product.setSpec_sensors(rs.getString("spec_sensors"));
				product.setSpec_sim_size(rs.getString("spec_sim_size"));
				product.setSpec_sim_type(rs.getString("spec_sim_type"));
				product.setSpec_smart_phone(rs.getString("spec_smart_phone"));
				product.setSpec_sms(rs.getString("spec_sms"));
				product.setSpec_supported_memorycardtype(rs.getString("spec_supported_memorycardtype"));
				product.setSpec_supported_networks(rs.getString("spec_supported_networks"));
				product.setSpec_touch_screen(rs.getString("spec_touch_screen"));
				product.setSpec_usb_connectivity(rs.getString("spec_usb_connectivity"));
				product.setSpec_video_formats(rs.getString("spec_video_formats"));
				product.setSpec_video_recording(rs.getString("spec_video_recording"));
				product.setSpec_videorecording_resolution(rs.getString("spec_videorecording_resolution"));
				product.setSpec_warranty_summary(rs.getString("spec_warranty_summary"));
				product.setSpec_weight(rs.getString("spec_weight"));
				product.setSpec_width(rs.getString("spec_width"));
				product.setSpec_wifi(rs.getString("spec_wifi"));
				product.setSpec_wifi_version(rs.getString("spec_wifi_version"));
				
				

				ar.add(product);
				
			}//while
		} catch(SQLException sqle) {
			LOGGER.error("EXCEPTION OCCURED",sqle);

		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}
		
		LOGGER.debug("execution ended");
		return ar;
	}//VendorEdit Method
	
	/**
	 * Encrypt Cookie Value before Storing.
	 * 
     * @param   toEncrypt
     *          A String containing data.
     *
     * @return  String
     * 			A string After encryption.
     */
	
	public String encryptText(String toEncrypt) {

	    String tempEn = toEncrypt + "";
	    String encryptText ="";
	    for(int i=0;i<tempEn.length();i++) {
	        int a = (int)tempEn.charAt(i);
	        a+=1483; // your Secret Key
	        encryptText +=a+" ";
	    }
	    
	    return encryptText;
	}//encryptText Method
	

	/**
	 * decrypt Cookie Value before validation.
	 * 
     * @param   encryptText
     *          A String containing data.
     *
     * @return  String
     * 			A string After Decryption.
     */

	public String decryptText(String encryptText) {

	    String decodeText = "";
	    String[] split = encryptText.split(" ");
	    
	    for(int i=0;i<split.length;i++) {
	        int a= Integer.parseInt(split[i]);
	        a -= 1483;
	        
	        decodeText +=(char)a;
	    }

	    return decodeText;
	}//decryptText Method

}//VendorDao Class
