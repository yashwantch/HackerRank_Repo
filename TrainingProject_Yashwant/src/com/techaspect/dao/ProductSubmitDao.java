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
 * The ProductSubmitDao class contains the database operations
 * related code.
 * 
 * This class belongs to Vendor Module. 
 * 
 * @author  Yashwant
 */

public class ProductSubmitDao extends Dao {

	private  static final Logger LOGGER = Logger.getLogger(ProductSubmitDao.class);

	DataSource datasource = getDataSource();

	
	public ProductSubmitDao() {
		
		System.out.println("ProductSubmitDao");
	}


	/**
	 * Inserts Product  Record in the Table .
	 * 
     * @param   product
     *          A Product object containing data.
     *
     * @return  boolean
     * 			true if record successfully inserted otherwise else.
     */
	
	public boolean productSubmit(Product product)
	{
	
		LOGGER.debug("execution started");

		boolean status = false;
		
		Connection con = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO products_details(vendor_id, product_name, product_price, product_quantity, product_description, product_image1, product_image2, product_image3, product_image4, product_image5, product_category, product_subcategory,descp_1_title,descp_1_content, descp_2_title, descp_2_content, descp_3_title, descp_3_content, descp_4_title, descp_4_content, descp_5_title, descp_5_content, descp_6_title, descp_6_content, descp_7_title, descp_7_content, descp_8_title, descp_8_content, descp_9_title, descp_9_content, descp_10_title, descp_10_content, spec_in_the_box, spec_model_number, spec_model_name, spec_color, spec_browse_type, spec_sim_type, spec_touch_screen, spec_display_size, spec_resolution, spec_resolution_type, spec_display_type, spec_display_colors, spec_operating_system, spec_processor_type, spec_processor_core, spec_primary_clockspeed, spec_secondary_clockspeed, spec_operating_frequency, spec_internal_storage, spec_ram, spec_expandable_storage, spec_supported_memorycardtype, spec_calllog_memory, spec_primarycamera_available, spec_primarycamera, spec_primarycamera_features, spec_secondarycamera_available, spec_secondarycamera, spec_secondarycamera_features, spec_flash, spec_hdrecording, spec_full_hdrecording, spec_video_recording, spec_videorecording_resolution, spec_frame_rate, spec_phonebook,spec_network_type, spec_supported_networks,spec_internet_connectivity, spec_3g,spec_gprs, spec_preinstalled_browser, spec_bluetooth_support, spec_bluetooth_version, spec_wifi, spec_wifi_version, spec_nfc, spec_usb_connectivity,spec_audio_jack, spec_smart_phone,spec_sim_size, spec_removable_battery,spec_sms, spec_sensors, spec_other_features, spec_important_apps,  spec_audio_formats, spec_video_formats, spec_battery_capacity, spec_battery_type, spec_width, spec_height, spec_depth, spec_weight, spec_warranty_summary)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = datasource.getConnection();
			stmt = openPreparedStatement(con,sql);
			stmt.setInt(1, product.getVid());
			stmt.setString(2, product.getName());
			stmt.setInt(3, product.getPrice());
			stmt.setInt(4, product.getQuantity());
			stmt.setString(5, product.getDescription());
			stmt.setString(6, product.getImage1());
			stmt.setString(7, product.getImage2());
			stmt.setString(8, product.getImage3());
			stmt.setString(9, product.getImage4());
			stmt.setString(10, product.getImage5());
			stmt.setString(11, product.getCategory());
			stmt.setString(12, product.getSubcategory());
			stmt.setString(13, product.getDescp_title_1());
			stmt.setString(14, product.getDescp_content_1());
			stmt.setString(15, product.getDescp_title_2());
			stmt.setString(16, product.getDescp_content_2());
			stmt.setString(17, product.getDescp_title_3());
			stmt.setString(18, product.getDescp_content_3());
			stmt.setString(19, product.getDescp_title_4());
			stmt.setString(20, product.getDescp_content_4());
			stmt.setString(21, product.getDescp_title_5());
			stmt.setString(22, product.getDescp_content_5());
			stmt.setString(23, product.getDescp_title_6());
			stmt.setString(24, product.getDescp_content_6());
			stmt.setString(25, product.getDescp_title_7());
			stmt.setString(26, product.getDescp_content_7());
			stmt.setString(27, product.getDescp_title_8());
			stmt.setString(28, product.getDescp_content_8());
			stmt.setString(29, product.getDescp_title_9());
			stmt.setString(30, product.getDescp_content_9());
			stmt.setString(31, product.getDescp_title_10());
			stmt.setString(32, product.getDescp_content_10());
			stmt.setString(33, product.getSpec_in_the_box());
			stmt.setString(34, product.getSpec_model_number());
			stmt.setString(35, product.getSpec_model_name());
			stmt.setString(36, product.getSpec_color());
			stmt.setString(37, product.getSpec_browse_type());
			stmt.setString(38, product.getSpec_sim_type());
			stmt.setString(39, product.getSpec_touch_screen());
			stmt.setString(40, product.getSpec_display_size());
			stmt.setString(41, product.getSpec_resolution());
			stmt.setString(42, product.getSpec_resolution_type());
			stmt.setString(43, product.getSpec_display_type());
			stmt.setString(44, product.getSpec_display_colors());
			stmt.setString(45, product.getSpec_operating_system());
			stmt.setString(46, product.getSpec_processor_type());
			stmt.setString(47, product.getSpec_processor_core());
			stmt.setString(48, product.getSpec_primary_clockspeed());
			stmt.setString(49, product.getSpec_secondary_clockspeed());
			stmt.setString(50, product.getSpec_operating_frequency());
			stmt.setString(51, product.getSpec_internal_storage());
			stmt.setString(52, product.getSpec_ram());
			stmt.setString(53, product.getSpec_expandable_storage());
			stmt.setString(54, product.getSpec_supported_memorycardtype());
			stmt.setString(55, product.getSpec_calllog_memory());
			stmt.setString(56, product.getSpec_primarycamera_available());
			stmt.setString(57, product.getSpec_primarycamera());
			stmt.setString(58, product.getSpec_primarycamera_features());
			stmt.setString(59, product.getSpec_secondarycamera_available());
			stmt.setString(60, product.getSpec_secondarycamera());
			stmt.setString(61, product.getSpec_secondarycamera_features());
			stmt.setString(62, product.getSpec_flash());
			stmt.setString(63, product.getSpec_hdrecording());
			stmt.setString(64, product.getSpec_full_hdrecording());
			stmt.setString(65, product.getSpec_video_recording());
			stmt.setString(66, product.getSpec_videorecording_resolution());
			stmt.setString(67, product.getSpec_frame_rate());
			stmt.setString(68, product.getSpec_phonebook());
			stmt.setString(69, product.getSpec_network_type());
			stmt.setString(70, product.getSpec_supported_networks());
			stmt.setString(71, product.getSpec_internet_connectivity());
			stmt.setString(72, product.getSpec_3g());
			stmt.setString(73, product.getSpec_gprs());
			stmt.setString(74, product.getSpec_preinstalled_browser());
			stmt.setString(75, product.getSpec_bluetooth_support());
			stmt.setString(76, product.getSpec_bluetooth_version());
			stmt.setString(77, product.getSpec_wifi());
			stmt.setString(78, product.getSpec_wifi_version());
			stmt.setString(79, product.getSpec_nfc());
			stmt.setString(80, product.getSpec_usb_connectivity());
			stmt.setString(81, product.getSpec_audio_jack());
			stmt.setString(82, product.getSpec_smart_phone());
			stmt.setString(83, product.getSpec_sim_size());
			stmt.setString(84, product.getSpec_removable_battery());
			stmt.setString(85, product.getSpec_sms());
			stmt.setString(86, product.getSpec_sensors());
			stmt.setString(87, product.getSpec_other_features());
			stmt.setString(88, product.getSpec_important_apps());
			stmt.setString(89, product.getSpec_audio_formats());
			stmt.setString(90, product.getSpec_video_formats());
			stmt.setString(91, product.getSpec_battery_capacity());
			stmt.setString(92, product.getSpec_battery_type());
			stmt.setString(93, product.getSpec_width());
			stmt.setString(94, product.getSpec_height());
			stmt.setString(95, product.getSpec_depth());
			stmt.setString(96, product.getSpec_weight());
			stmt.setString(97, product.getSpec_warranty_summary());
			
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
	}//product submit Method
	

}//Product SubmitDao Class
