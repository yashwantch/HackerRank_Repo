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

package com.techaspect.entity;


/**
* The Product class represents a Product Record.
* It includes properties for storing data and methods for
* retrieving & setting values in the properties.
* 
* @author  Yashwant
*/
public class Product {

	/** The value is used for int storage representing product's ID. */
	private int pid;
	
	/** The value is used for int storage representing Vendor's ID. */
	private int vid;
	
	/** The value is used for string storage representing Product's Name. */
	private String name;
	
	/** The value is used for int storage representing Product's Price. */
	private int price;
	
	/** The value is used for string storage representing Product's description. */
	private String description;
	
	/** The value is used for int storage representing Product's quantity. */
	private int quantity;
	
	/** The value is used for string storage representing Product's image1. */
	private String image1;
	
	/** The value is used for string storage representing Product's image2. */
	private String image2;
	
	/** The value is used for string storage representing Product's image3. */
	private String image3;
	
	/** The value is used for string storage representing Product's image4. */
	private String image4;
	
	/** The value is used for string storage representing Product's image5. */
	private String image5;
	
	/** The value is used for string storage representing Product's category. */
	private String category;
	
	/** The value is used for string storage representing Product's subcategory. */
	private String subcategory;
	
	/** The value is used for string storage representing Product's description title 1. */
	private String descp_title_1;
	
	/** The value is used for string storage representing Product's description content 1. */
	private String descp_content_1;
	
	/** The value is used for string storage representing Product's description title 2. */
	private String descp_title_2;
	
	/** The value is used for string storage representing Product's description content 2. */
	private String descp_content_2;
	
	/** The value is used for string storage representing Product's description title 3. */
	private String descp_title_3;
	
	/** The value is used for string storage representing Product's description content 3. */
	private String descp_content_3;
	
	/** The value is used for string storage representing Product's description title 4. */
	private String descp_title_4;
	
	/** The value is used for string storage representing Product's description content 4. */
	private String descp_content_4;
	
	/** The value is used for string storage representing Product's description title 5. */
	private String descp_title_5;
	
	/** The value is used for string storage representing Product's description content 5. */
	private String descp_content_5;
	
	/** The value is used for string storage representing Product's description title 6. */
	private String descp_title_6;
	
	/** The value is used for string storage representing Product's description content 6. */
	private String descp_content_6;
	
	/** The value is used for string storage representing Product's description title 7. */
	private String descp_title_7;
	
	/** The value is used for string storage representing Product's description content 7. */
	private String descp_content_7;
	
	/** The value is used for string storage representing Product's description title 8. */
	private String descp_title_8;
	
	/** The value is used for string storage representing Product's description content 8. */
	private String descp_content_8;
	
	/** The value is used for string storage representing Product's description title 9. */
	private String descp_title_9;
	
	/** The value is used for string storage representing Product's description content 9. */
	private String descp_content_9;
	
	/** The value is used for string storage representing Product's description title 10. */
	private String descp_title_10;
	
	/** The value is used for string storage representing Product's description content 10. */
	private String descp_content_10;
	
	/** The value is used for sint storage representing Product's specification id. */
	private int spec_id;
	
	/** The value is used for string storage representing Product's specification category. */
	private String spec_category;
	
	/** The value is used for string storage representing Product's specification in the box. */
	private String spec_in_the_box;
	
	/** The value is used for string storage representing Product's specification model number. */
	private String spec_model_number; 
	
	/** The value is used for string storage representing Product's specification model name. */
	private String spec_model_name;
	
	/** The value is used for string storage representing Product's specification color. */
	private String spec_color;
	
	/** The value is used for string storage representing Product's specification browser type. */
	private String spec_browse_type;
	
	/** The value is used for string storage representing Product's specification sim type. */
	private String spec_sim_type;
	
	/** The value is used for string storage representing Product's specification touch screen. */
	private String spec_touch_screen;
	
	/** The value is used for string storage representing Product's specification display size. */
	private String spec_display_size;
	
	/** The value is used for string storage representing Product's specification resolution. */
	private String spec_resolution;
	
	/** The value is used for string storage representing Product's specification resolution type. */
	private String spec_resolution_type;
	
	/** The value is used for string storage representing Product's specification display type. */
	private String spec_display_type;
	
	/** The value is used for string storage representing Product's specification display colors. */
	private String spec_display_colors;
	
	/** The value is used for string storage representing Product's specification operating system. */
	private String spec_operating_system;
	
	/** The value is used for string storage representing Product's specification processor type. */
	private String spec_processor_type;
	
	/** The value is used for string storage representing Product's specification processor core. */
	private String spec_processor_core;
	
	/** The value is used for string storage representing Product's specification primary clockspeed. */
	private String spec_primary_clockspeed;
	
	/** The value is used for string storage representing Product's specification secondary clockspeed. */
	private String spec_secondary_clockspeed;
	
	/** The value is used for string storage representing Product's specification operating frequency. */
	private String spec_operating_frequency;
	
	/** The value is used for string storage representing Product's specification internal storage. */
	private String spec_internal_storage;
	
	/** The value is used for string storage representing Product's specification ram. */
	private String spec_ram;
	
	/** The value is used for string storage representing Product's specification expandable storage. */
	private String spec_expandable_storage;
	
	/** The value is used for string storage representing Product's specification memorycard type. */
	private String spec_supported_memorycardtype;
	
	/** The value is used for string storage representing Product's specification call log memory. */
	private String spec_calllog_memory;
	
	/** The value is used for string storage representing Product's specification primary camera available. */
	private String spec_primarycamera_available;
	
	/** The value is used for string storage representing Product's specification primary camera. */
	private String spec_primarycamera;
	
	/** The value is used for string storage representing Product's specification priamry camera features. */
	private String spec_primarycamera_features;
	
	/** The value is used for string storage representing Product's specification secondary camera available. */
	private String spec_secondarycamera_available;
	
	/** The value is used for string storage representing Product's specification secondary camera. */
	private String spec_secondarycamera;
	
	/** The value is used for string storage representing Product's specification secondary camera features. */
	private String spec_secondarycamera_features;
	
	/** The value is used for string storage representing Product's specification flash. */
	private String spec_flash;
	
	/** The value is used for string storage representing Product's specification hd recording. */
	private String spec_hdrecording;
	
	/** The value is used for string storage representing Product's specification full hd recording. */
	private String spec_full_hdrecording;
	
	/** The value is used for string storage representing Product's specification video recording. */
	private String spec_video_recording;
	
	/** The value is used for string storage representing Product's specification video recording resolution. */
	private String spec_videorecording_resolution;
	
	/** The value is used for string storage representing Product's frame rate. */
	private String spec_frame_rate;
	
	/** The value is used for string storage representing Product's phonebook. */
	private String spec_phonebook;
	
	/** The value is used for string storage representing Product's specification network type. */
	private String spec_network_type;
	
	/** The value is used for string storage representing Product's specification supported networks. */
	private String spec_supported_networks;
	
	/** The value is used for string storage representing Product's specification internet connectivity. */
	private String spec_internet_connectivity;
	
	/** The value is used for string storage representing Product's specification 3g. */
	private String spec_3g;
	
	/** The value is used for string storage representing Product's specification gprs. */
	private String spec_gprs;
	
	/** The value is used for string storage representing Product's specification preinstalled browsers. */
	private String spec_preinstalled_browser;
	
	/** The value is used for string storage representing Product's specification bluetooth support. */
	private String spec_bluetooth_support;
	
	/** The value is used for string storage representing Product's specification bluetooth version. */
	private String spec_bluetooth_version;
	
	/** The value is used for string storage representing Product's specification wifi. */
	private String spec_wifi;
	
	/** The value is used for string storage representing Product's specification wifi version. */
	private String spec_wifi_version;
	
	/** The value is used for string storage representing Product's specification nfc. */
	private String spec_nfc;
	
	/** The value is used for string storage representing Product's specification usb connectivity. */
	private String spec_usb_connectivity;
	
	/** The value is used for string storage representing Product's specification audio jack. */
	private String spec_audio_jack;
	
	/** The value is used for string storage representing Product's specification smart phone. */
	private String spec_smart_phone;
	
	/** The value is used for string storage representing Product's specification sim size. */
	private String spec_sim_size;
	
	/** The value is used for string storage representing Product's specification removable battery. */
	private String spec_removable_battery;
	
	/** The value is used for string storage representing Product's specification sms. */
	private String spec_sms;
	
	/** The value is used for string storage representing Product's specification sensors. */
	private String spec_sensors;
	
	/** The value is used for string storage representing Product's specification other features. */
	private String spec_other_features;
	
	/** The value is used for string storage representing Product's specification important apps. */
	private String spec_important_apps;
	
	/** The value is used for string storage representing Product's specification audio formats. */
	private String spec_audio_formats;
	
	/** The value is used for string storage representing Product's specification video formats. */
	private String spec_video_formats;
	
	/** The value is used for string storage representing Product's specification battery capacity. */
	private String spec_battery_capacity;
	
	/** The value is used for string storage representing Product's specification battery type. */
	private String spec_battery_type;
	
	/** The value is used for string storage representing Product's specification width. */
	private String spec_width;
	
	/** The value is used for string storage representing Product's specification height. */
	private String spec_height;
	
	/** The value is used for string storage representing Product's specification depth. */
	private String spec_depth;
	
	/** The value is used for string storage representing Product's specification weight. */
	private String spec_weight;
	
	/** The value is used for string storage representing Product's specification warranty. */
	private String spec_warranty_summary;
	
	
	
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code int value.
     *             The ID of Product.
     */
	
	public int getPid() {
		return pid;
	}
	
	/**
     * Sets a value to the property id.
     *
     * @param      A int value.
     *              The ID of product.
     */
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code int value.
     *             The ID of Vendor.
     */
	public int getVid() {
		return vid;
	}
	
	/**
     * Sets a value to the property id.
     *
     * @param      A int value.
     *              The ID of Vendor.
     */
	public void setVid(int vid) {
		this.vid = vid;
	}
	
	/**
     * Retrieves the value of the property name.
     *
     * @return     A code String value.
     *             The Name of product.
     */
	public String getName() {
		return name;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setName(String name) {
		this.name = name;
	}
	
	/**
     * Retrieves the value of the property price.
     *
     * @return     A code int value.
     *             The Name of product.
     */
	public int getPrice() {
		return price;
	}
	
	/**
     * Sets a value to the property price.
     *
     * @param      A int value.
     *              The price of product.
     */
	public void setPrice(int price) {
		this.price = price;
	}
	
	/**
     * Retrieves the value of the property description.
     *
     * @return     A code String value.
     *             The description of product.
     */
	public String getDescription() {
		return description;
	}
	
	/**
     * Sets a value to the property description.
     *
     * @param      A String value.
     *              The description of product.
     */
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
     * Retrieves the value of the property quantity.
     *
     * @return     A code int value.
     *             The quantity of product.
     */
	public int getQuantity() {
		return quantity;
	}
	
	/**
     * Sets a value to the property quantity.
     *
     * @param      A int value.
     *              The quantity of product.
     */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	/**
     * Retrieves the value of the property image1.
     *
     * @return     A code String value.
     *             The image1 of product.
     */
	public String getImage1() {
		return image1;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	/**
     * Retrieves the value of the property image2.
     *
     * @return     A code String value.
     *             The image2 of product.
     */
	public String getImage2() {
		return image2;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	
	/**
     * Retrieves the value of the property image3.
     *
     * @return     A code String value.
     *             The image3 of product.
     */
	public String getImage3() {
		return image3;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	
	/**
     * Retrieves the value of the property image4.
     *
     * @return     A code String value.
     *             The image4 of product.
     */
	public String getImage4() {
		return image4;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setImage4(String image4) {
		this.image4 = image4;
	}
	
	/**
     * Retrieves the value of the property image5.
     *
     * @return     A code String value.
     *             The image5 of product.
     */
	public String getImage5() {
		return image5;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setImage5(String image5) {
		this.image5 = image5;
	}
	
	/**
     * Retrieves the value of the property category.
     *
     * @return     A code String value.
     *             The category of product.
     */
	public String getCategory() {
		return category;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setCategory(String category) {
		this.category = category;
	}
	
	/**
     * Retrieves the value of the property sub category.
     *
     * @return     A code String value.
     *             The sub category of product.
     */
	public String getSubcategory() {
		return subcategory;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}
	
	/**
     * Retrieves the value of the property description title 1.
     *
     * @return     A code String value.
     *             The description title 1 of product.
     */
	public String getDescp_title_1() {
		return descp_title_1;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_1(String descp_title_1) {
		this.descp_title_1 = descp_title_1;
	}
	
	/**
     * Retrieves the value of the property description content 1.
     *
     * @return     A code String value.
     *             The description content 1 of product.
     */
	public String getDescp_content_1() {
		return descp_content_1;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_1(String descp_content_1) {
		this.descp_content_1 = descp_content_1;
	}
	
	/**
     * Retrieves the value of the property description title 2.
     *
     * @return     A code String value.
     *             The description title 2 of product.
     */
	public String getDescp_title_2() {
		return descp_title_2;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_2(String descp_title_2) {
		this.descp_title_2 = descp_title_2;
	}
	
	/**
     * Retrieves the value of the property description content 2.
     *
     * @return     A code String value.
     *             The description content 2 of product.
     */
	public String getDescp_content_2() {
		return descp_content_2;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_2(String descp_content_2) {
		this.descp_content_2 = descp_content_2;
	}
	
	/**
     * Retrieves the value of the property description title 3.
     *
     * @return     A code String value.
     *             The description title 3 of product.
     */
	public String getDescp_title_3() {
		return descp_title_3;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_3(String descp_title_3) {
		this.descp_title_3 = descp_title_3;
	}
	
	/**
     * Retrieves the value of the property description content 3.
     *
     * @return     A code String value.
     *             The description content 3 of product.
     */
	public String getDescp_content_3() {
		return descp_content_3;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_3(String descp_content_3) {
		this.descp_content_3 = descp_content_3;
	}
	
	/**
     * Retrieves the value of the property description title 4.
     *
     * @return     A code String value.
     *             The description title 4 of product.
     */
	public String getDescp_title_4() {
		return descp_title_4;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_4(String descp_title_4) {
		this.descp_title_4 = descp_title_4;
	}
	
	/**
     * Retrieves the value of the property description content 4.
     *
     * @return     A code String value.
     *             The description content 4 of product.
     */
	public String getDescp_content_4() {
		return descp_content_4;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_4(String descp_content_4) {
		this.descp_content_4 = descp_content_4;
	}
	
	/**
     * Retrieves the value of the property description title 5.
     *
     * @return     A code String value.
     *             The description title 5 of product.
     */
	public String getDescp_title_5() {
		return descp_title_5;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_5(String descp_title_5) {
		this.descp_title_5 = descp_title_5;
	}
	
	/**
     * Retrieves the value of the property description content 5.
     *
     * @return     A code String value.
     *             The description content 5 of product.
     */
	public String getDescp_content_5() {
		return descp_content_5;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_5(String descp_content_5) {
		this.descp_content_5 = descp_content_5;
	}
	
	/**
     * Retrieves the value of the property description title 6.
     *
     * @return     A code String value.
     *             The description title 6 of product.
     */
	public String getDescp_title_6() {
		return descp_title_6;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_6(String descp_title_6) {
		this.descp_title_6 = descp_title_6;
	}
	
	/**
     * Retrieves the value of the property description content 6.
     *
     * @return     A code String value.
     *             The description content 6 of product.
     */
	public String getDescp_content_6() {
		return descp_content_6;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_6(String descp_content_6) {
		this.descp_content_6 = descp_content_6;
	}
	
	/**
     * Retrieves the value of the property description title 7.
     *
     * @return     A code String value.
     *             The description title 7 of product.
     */
	public String getDescp_title_7() {
		return descp_title_7;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_7(String descp_title_7) {
		this.descp_title_7 = descp_title_7;
	}
	
	/**
     * Retrieves the value of the property description content 7.
     *
     * @return     A code String value.
     *             The description content 7 of product.
     */
	public String getDescp_content_7() {
		return descp_content_7;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_7(String descp_content_7) {
		this.descp_content_7 = descp_content_7;
	}
	
	/**
     * Retrieves the value of the property description title 8.
     *
     * @return     A code String value.
     *             The description title 8 of product.
     */
	public String getDescp_title_8() {
		return descp_title_8;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_8(String descp_title_8) {
		this.descp_title_8 = descp_title_8;
	}
	
	/**
     * Retrieves the value of the property description content 8.
     *
     * @return     A code String value.
     *             The description content 8 of product.
     */
	public String getDescp_content_8() {
		return descp_content_8;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_8(String descp_content_8) {
		this.descp_content_8 = descp_content_8;
	}
	
	/**
     * Retrieves the value of the property description title 9.
     *
     * @return     A code String value.
     *             The description title 9 of product.
     */
	public String getDescp_title_9() {
		return descp_title_9;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_9(String descp_title_9) {
		this.descp_title_9 = descp_title_9;
	}
	
	/**
     * Retrieves the value of the property description content 9.
     *
     * @return     A code String value.
     *             The description content 9 of product.
     */
	public String getDescp_content_9() {
		return descp_content_9;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_9(String descp_content_9) {
		this.descp_content_9 = descp_content_9;
	}
	
	/**
     * Retrieves the value of the property description title 10.
     *
     * @return     A code String value.
     *             The description title 10 of product.
     */
	public String getDescp_title_10() {
		return descp_title_10;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_title_10(String descp_title_10) {
		this.descp_title_10 = descp_title_10;
	}
	
	/**
     * Retrieves the value of the property description content 10.
     *
     * @return     A code String value.
     *             The description content 10 of product.
     */
	public String getDescp_content_10() {
		return descp_content_10;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setDescp_content_10(String descp_content_10) {
		this.descp_content_10 = descp_content_10;
	}
	
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code String value.
     *             The id of product.
     */
	public int getSpec_id() {
		return spec_id;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_id(int spec_id) {
		this.spec_id = spec_id;
	}
	
	/**
     * Retrieves the value of the property category.
     *
     * @return     A code String value.
     *             The category of product.
     */
	public String getSpec_category() {
		return spec_category;
	}
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_category(String spec_category) {
		this.spec_category = spec_category;
	}
	
	/**
     * Retrieves the value of the property in the box.
     *
     * @return     A code String value.
     *             The in the box of product.
     */
	public String getSpec_in_the_box() {
		return spec_in_the_box;
	}
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_in_the_box(String spec_in_the_box) {
		this.spec_in_the_box = spec_in_the_box;
	}
	
	/**
     * Retrieves the value of the property model number.
     *
     * @return     A code String value.
     *             The model number of product.
     */
	public String getSpec_model_number() {
		return spec_model_number;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_model_number(String spec_model_number) {
		this.spec_model_number = spec_model_number;
	}
	
	/**
     * Retrieves the value of the property model name.
     *
     * @return     A code String value.
     *             The model name of product.
     */
	public String getSpec_model_name() {
		return spec_model_name;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_model_name(String spec_model_name) {
		this.spec_model_name = spec_model_name;
	}
	
	/**
     * Retrieves the value of the property color.
     *
     * @return     A code String value.
     *             The color of product.
     */
	public String getSpec_color() {
		return spec_color;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_color(String spec_color) {
		this.spec_color = spec_color;
	}
	
	/**
     * Retrieves the value of the property browser type.
     *
     * @return     A code String value.
     *             The browser type of product.
     */
	public String getSpec_browse_type() {
		return spec_browse_type;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_browse_type(String spec_browse_type) {
		this.spec_browse_type = spec_browse_type;
	}
	
	/**
     * Retrieves the value of the property simtype.
     *
     * @return     A code String value.
     *             The simtype of product.
     */
	public String getSpec_sim_type() {
		return spec_sim_type;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_sim_type(String spec_sim_type) {
		this.spec_sim_type = spec_sim_type;
	}
	
	/**
     * Retrieves the value of the property touch screen.
     *
     * @return     A code String value.
     *             The touch screen of product.
     */
	public String getSpec_touch_screen() {
		return spec_touch_screen;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_touch_screen(String spec_touch_screen) {
		this.spec_touch_screen = spec_touch_screen;
	}
	
	/**
     * Retrieves the value of the property display size.
     *
     * @return     A code String value.
     *             The display size of product.
     */
	public String getSpec_display_size() {
		return spec_display_size;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_display_size(String spec_display_size) {
		this.spec_display_size = spec_display_size;
	}
	
	/**
     * Retrieves the value of the property resolution.
     *
     * @return     A code String value.
     *             The resolution of product.
     */
	public String getSpec_resolution() {
		return spec_resolution;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_resolution(String spec_resolution) {
		this.spec_resolution = spec_resolution;
	}
	
	/**
     * Retrieves the value of the property resolution type.
     *
     * @return     A code String value.
     *             The resolution type of product.
     */
	public String getSpec_resolution_type() {
		return spec_resolution_type;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_resolution_type(String spec_resolution_type) {
		this.spec_resolution_type = spec_resolution_type;
	}
	
	/**
     * Retrieves the value of the property display type.
     *
     * @return     A code String value.
     *             The display type of product.
     */
	public String getSpec_display_type() {
		return spec_display_type;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_display_type(String spec_display_type) {
		this.spec_display_type = spec_display_type;
	}
	
	/**
     * Retrieves the value of the property display colors.
     *
     * @return     A code String value.
     *             The display colors of product.
     */
	public String getSpec_display_colors() {
		return spec_display_colors;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_display_colors(String spec_display_colors) {
		this.spec_display_colors = spec_display_colors;
	}
	
	/**
     * Retrieves the value of the property operating system.
     *
     * @return     A code String value.
     *             The operating system of product.
     */
	public String getSpec_operating_system() {
		return spec_operating_system;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_operating_system(String spec_operating_system) {
		this.spec_operating_system = spec_operating_system;
	}
	
	/**
     * Retrieves the value of the property nprocessor type.
     *
     * @return     A code String value.
     *             The processor type of product.
     */
	public String getSpec_processor_type() {
		return spec_processor_type;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_processor_type(String spec_processor_type) {
		this.spec_processor_type = spec_processor_type;
	}
	
	/**
     * Retrieves the value of the property processor core.
     *
     * @return     A code String value.
     *             The processor core of product.
     */
	public String getSpec_processor_core() {
		return spec_processor_core;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_processor_core(String spec_processor_core) {
		this.spec_processor_core = spec_processor_core;
	}
	
	/**
     * Retrieves the value of the property primary clockspepd.
     *
     * @return     A code String value.
     *             The primary clockspeed of product.
     */
	public String getSpec_primary_clockspeed() {
		return spec_primary_clockspeed;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_primary_clockspeed(String spec_primary_clockspeed) {
		this.spec_primary_clockspeed = spec_primary_clockspeed;
	}
	
	/**
     * Retrieves the value of the property secondary clockspped.
     *
     * @return     A code String value.
     *             The secondary clockspeed of product.
     */
	public String getSpec_secondary_clockspeed() {
		return spec_secondary_clockspeed;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_secondary_clockspeed(String spec_secondary_clockspeed) {
		this.spec_secondary_clockspeed = spec_secondary_clockspeed;
	}
	
	/**
     * Retrieves the value of the property operating frequency.
     *
     * @return     A code String value.
     *             The operating frequency of product.
     */
	public String getSpec_operating_frequency() {
		return spec_operating_frequency;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_operating_frequency(String spec_operating_frequency) {
		this.spec_operating_frequency = spec_operating_frequency;
	}
	
	/**
     * Retrieves the value of the property internal storage.
     *
     * @return     A code String value.
     *             The internal storage of product.
     */
	public String getSpec_internal_storage() {
		return spec_internal_storage;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_internal_storage(String spec_internal_storage) {
		this.spec_internal_storage = spec_internal_storage;
	}
	
	/**
     * Retrieves the value of the property ram.
     *
     * @return     A code String value.
     *             The ram of product.
     */
	public String getSpec_ram() {
		return spec_ram;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_ram(String spec_ram) {
		this.spec_ram = spec_ram;
	}
	
	/**
     * Retrieves the value of the property expandalbe storage.
     *
     * @return     A code String value.
     *             The expandable storage of product.
     */
	public String getSpec_expandable_storage() {
		return spec_expandable_storage;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_expandable_storage(String spec_expandable_storage) {
		this.spec_expandable_storage = spec_expandable_storage;
	}
	
	/**
     * Retrieves the value of the property memory card type.
     *
     * @return     A code String value.
     *             The memory card type of product.
     */
	public String getSpec_supported_memorycardtype() {
		return spec_supported_memorycardtype;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_supported_memorycardtype(String spec_supported_memorycardtype) {
		this.spec_supported_memorycardtype = spec_supported_memorycardtype;
	}
	
	/**
     * Retrieves the value of the property call log memory.
     *
     * @return     A code String value.
     *             The call log memory of product.
     */
	public String getSpec_calllog_memory() {
		return spec_calllog_memory;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_calllog_memory(String spec_calllog_memory) {
		this.spec_calllog_memory = spec_calllog_memory;
	}
	
	/**
     * Retrieves the value of the property primary camera available.
     *
     * @return     A code String value.
     *             The primary camera available of product.
     */
	public String getSpec_primarycamera_available() {
		return spec_primarycamera_available;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_primarycamera_available(String spec_primarycamera_available) {
		this.spec_primarycamera_available = spec_primarycamera_available;
	}
	
	/**
     * Retrieves the value of the property primary camera.
     *
     * @return     A code String value.
     *             The primary camera of product.
     */
	public String getSpec_primarycamera() {
		return spec_primarycamera;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_primarycamera(String spec_primarycamera) {
		this.spec_primarycamera = spec_primarycamera;
	}
	
	/**
     * Retrieves the value of the property primary camera features.
     *
     * @return     A code String value.
     *             The primary camera features of product.
     */
	public String getSpec_primarycamera_features() {
		return spec_primarycamera_features;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_primarycamera_features(String spec_primarycamera_features) {
		this.spec_primarycamera_features = spec_primarycamera_features;
	}
	
	/**
     * Retrieves the value of the property secondary camera available.
     *
     * @return     A code String value.
     *             The secondary camera available of product.
     */
	public String getSpec_secondarycamera_available() {
		return spec_secondarycamera_available;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_secondarycamera_available(String spec_secondarycamera_available) {
		this.spec_secondarycamera_available = spec_secondarycamera_available;
	}
	
	/**
     * Retrieves the value of the property secondary camera.
     *
     * @return     A code String value.
     *             The secondary camera of product.
     */
	public String getSpec_secondarycamera() {
		return spec_secondarycamera;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_secondarycamera(String spec_secondarycamera) {
		this.spec_secondarycamera = spec_secondarycamera;
	}
	
	/**
     * Retrieves the value of the property secondary camera features.
     *
     * @return     A code String value.
     *             The secondary camera features of product.
     */
	public String getSpec_secondarycamera_features() {
		return spec_secondarycamera_features;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_secondarycamera_features(String spec_secondarycamera_features) {
		this.spec_secondarycamera_features = spec_secondarycamera_features;
	}
	
	/**
     * Retrieves the value of the property flash.
     *
     * @return     A code String value.
     *             The flash of product.
     */
	public String getSpec_flash() {
		return spec_flash;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_flash(String spec_flash) {
		this.spec_flash = spec_flash;
	}
	
	/**
     * Retrieves the value of the property hd recording.
     *
     * @return     A code String value.
     *             The hd recording of product.
     */
	public String getSpec_hdrecording() {
		return spec_hdrecording;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_hdrecording(String spec_hdrecording) {
		this.spec_hdrecording = spec_hdrecording;
	}
	
	/**
     * Retrieves the value of the property full hd recording.
     *
     * @return     A code String value.
     *             The full hd recording of product.
     */
	public String getSpec_full_hdrecording() {
		return spec_full_hdrecording;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_full_hdrecording(String spec_full_hdrecording) {
		this.spec_full_hdrecording = spec_full_hdrecording;
	}
	
	/**
     * Retrieves the value of the property video recording.
     *
     * @return     A code String value.
     *             The video recording of product.
     */
	public String getSpec_video_recording() {
		return spec_video_recording;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_video_recording(String spec_video_recording) {
		this.spec_video_recording = spec_video_recording;
	}
	
	/**
     * Retrieves the value of the property video recording resolution.
     *
     * @return     A code String value.
     *             The video recording resolution of product.
     */
	public String getSpec_videorecording_resolution() {
		return spec_videorecording_resolution;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_videorecording_resolution(String spec_videorecording_resolution) {
		this.spec_videorecording_resolution = spec_videorecording_resolution;
	}
	
	/**
     * Retrieves the value of the property frame rate.
     *
     * @return     A code String value.
     *             The frame rate of product.
     */
	public String getSpec_frame_rate() {
		return spec_frame_rate;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_frame_rate(String spec_frame_rate) {
		this.spec_frame_rate = spec_frame_rate;
	}
	
	/**
     * Retrieves the value of the property phone book.
     *
     * @return     A code String value.
     *             The phone book of product.
     */
	public String getSpec_phonebook() {
		return spec_phonebook;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_phonebook(String spec_phonebook) {
		this.spec_phonebook = spec_phonebook;
	}
	
	/**
     * Retrieves the value of the property network type.
     *
     * @return     A code String value.
     *             The network type of product.
     */
	public String getSpec_network_type() {
		return spec_network_type;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_network_type(String spec_network_type) {
		this.spec_network_type = spec_network_type;
	}
	
	/**
     * Retrieves the value of the property supported networks.
     *
     * @return     A code String value.
     *             The supported networks of product.
     */
	public String getSpec_supported_networks() {
		return spec_supported_networks;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_supported_networks(String spec_supported_networks) {
		this.spec_supported_networks = spec_supported_networks;
	}
	
	/**
     * Retrieves the value of the property internet connectivity.
     *
     * @return     A code String value.
     *             The internet connectivity of product.
     */
	public String getSpec_internet_connectivity() {
		return spec_internet_connectivity;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_internet_connectivity(String spec_internet_connectivity) {
		this.spec_internet_connectivity = spec_internet_connectivity;
	}
	
	/**
     * Retrieves the value of the property 3g.
     *
     * @return     A code String value.
     *             The 3g of product.
     */
	public String getSpec_3g() {
		return spec_3g;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_3g(String spec_3g) {
		this.spec_3g = spec_3g;
	}
	
	/**
     * Retrieves the value of the property gprs.
     *
     * @return     A code String value.
     *             The gprs of product.
     */
	public String getSpec_gprs() {
		return spec_gprs;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_gprs(String spec_gprs) {
		this.spec_gprs = spec_gprs;
	}
	
	/**
     * Retrieves the value of the property pre installed browsers.
     *
     * @return     A code String value.
     *             The pre installed browsers of product.
     */
	public String getSpec_preinstalled_browser() {
		return spec_preinstalled_browser;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_preinstalled_browser(String spec_preinstalled_browser) {
		this.spec_preinstalled_browser = spec_preinstalled_browser;
	}
	
	/**
     * Retrieves the value of the property bluetooth support.
     *
     * @return     A code String value.
     *             The bluetooth support of product.
     */
	public String getSpec_bluetooth_support() {
		return spec_bluetooth_support;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_bluetooth_support(String spec_bluetooth_support) {
		this.spec_bluetooth_support = spec_bluetooth_support;
	}
	
	/**
     * Retrieves the value of the property bluetooth version.
     *
     * @return     A code String value.
     *             The bluetooth version of product.
     */
	public String getSpec_bluetooth_version() {
		return spec_bluetooth_version;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_bluetooth_version(String spec_bluetooth_version) {
		this.spec_bluetooth_version = spec_bluetooth_version;
	}
	
	/**
     * Retrieves the value of the property wifi.
     *
     * @return     A code String value.
     *             The wifi of product.
     */
	public String getSpec_wifi() {
		return spec_wifi;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_wifi(String spec_wifi) {
		this.spec_wifi = spec_wifi;
	}
	
	/**
     * Retrieves the value of the property wifi version.
     *
     * @return     A code String value.
     *             The wifi version of product.
     */
	public String getSpec_wifi_version() {
		return spec_wifi_version;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_wifi_version(String spec_wifi_version) {
		this.spec_wifi_version = spec_wifi_version;
	}
	
	/**
     * Retrieves the value of the property nfc.
     *
     * @return     A code String value.
     *             The Nfc of product.
     */
	public String getSpec_nfc() {
		return spec_nfc;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_nfc(String spec_nfc) {
		this.spec_nfc = spec_nfc;
	}
	
	/**
     * Retrieves the value of the property usb connectivity.
     *
     * @return     A code String value.
     *             The usb connectivity of product.
     */
	public String getSpec_usb_connectivity() {
		return spec_usb_connectivity;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_usb_connectivity(String spec_usb_connectivity) {
		this.spec_usb_connectivity = spec_usb_connectivity;
	}
	
	/**
     * Retrieves the value of the property audio jack.
     *
     * @return     A code String value.
     *             The audio jack of product.
     */
	public String getSpec_audio_jack() {
		return spec_audio_jack;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_audio_jack(String spec_audio_jack) {
		this.spec_audio_jack = spec_audio_jack;
	}
	
	/**
     * Retrieves the value of the property smart phone.
     *
     * @return     A code String value.
     *             The smart phone of product.
     */
	public String getSpec_smart_phone() {
		return spec_smart_phone;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_smart_phone(String spec_smart_phone) {
		this.spec_smart_phone = spec_smart_phone;
	}
	
	/**
     * Retrieves the value of the property sim size.
     *
     * @return     A code String value.
     *             The sim size of product.
     */
	public String getSpec_sim_size() {
		return spec_sim_size;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_sim_size(String spec_sim_size) {
		this.spec_sim_size = spec_sim_size;
	}
	
	/**
     * Retrieves the value of the property removable battery.
     *
     * @return     A code String value.
     *             The removable battery of product.
     */
	public String getSpec_removable_battery() {
		return spec_removable_battery;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_removable_battery(String spec_removable_battery) {
		this.spec_removable_battery = spec_removable_battery;
	}
	
	/**
     * Retrieves the value of the property sms.
     *
     * @return     A code String value.
     *             The sms of product.
     */
	public String getSpec_sms() {
		return spec_sms;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_sms(String spec_sms) {
		this.spec_sms = spec_sms;
	}
	
	/**
     * Retrieves the value of the property sensors.
     *
     * @return     A code String value.
     *             The sensors of product.
     */
	public String getSpec_sensors() {
		return spec_sensors;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_sensors(String spec_sensors) {
		this.spec_sensors = spec_sensors;
	}
	
	/**
     * Retrieves the value of the property other features.
     *
     * @return     A code String value.
     *             The other features of product.
     */
	public String getSpec_other_features() {
		return spec_other_features;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_other_features(String spec_other_features) {
		this.spec_other_features = spec_other_features;
	}
	
	/**
     * Retrieves the value of the property important apps.
     *
     * @return     A code String value.
     *             The important apps of product.
     */
	public String getSpec_important_apps() {
		return spec_important_apps;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_important_apps(String spec_important_apps) {
		this.spec_important_apps = spec_important_apps;
	}
	
	/**
     * Retrieves the value of the property audio formats.
     *
     * @return     A code String value.
     *             The audio formats of product.
     */
	public String getSpec_audio_formats() {
		return spec_audio_formats;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_audio_formats(String spec_audio_formats) {
		this.spec_audio_formats = spec_audio_formats;
	}
	
	/**
     * Retrieves the value of the property video formats.
     *
     * @return     A code String value.
     *             The video formats of product.
     */
	public String getSpec_video_formats() {
		return spec_video_formats;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_video_formats(String spec_video_formats) {
		this.spec_video_formats = spec_video_formats;
	}
	
	/**
     * Retrieves the value of the property battery capacity.
     *
     * @return     A code String value.
     *             The battery capacity of product.
     */
	public String getSpec_battery_capacity() {
		return spec_battery_capacity;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_battery_capacity(String spec_battery_capacity) {
		this.spec_battery_capacity = spec_battery_capacity;
	}
	
	/**
     * Retrieves the value of the property battery type.
     *
     * @return     A code String value.
     *             The battery type of product.
     */
	public String getSpec_battery_type() {
		return spec_battery_type;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_battery_type(String spec_battery_type) {
		this.spec_battery_type = spec_battery_type;
	}
	
	/**
     * Retrieves the value of the property width.
     *
     * @return     A code String value.
     *             The width of product.
     */
	public String getSpec_width() {
		return spec_width;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_width(String spec_width) {
		this.spec_width = spec_width;
	}
	
	/**
     * Retrieves the value of the property height.
     *
     * @return     A code String value.
     *             The height of product.
     */
	public String getSpec_height() {
		return spec_height;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_height(String spec_height) {
		this.spec_height = spec_height;
	}
	
	/**
     * Retrieves the value of the property depth.
     *
     * @return     A code String value.
     *             The depth of product.
     */
	public String getSpec_depth() {
		return spec_depth;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_depth(String spec_depth) {
		this.spec_depth = spec_depth;
	}
	
	/**
     * Retrieves the value of the property weight.
     *
     * @return     A code String value.
     *             The weight of product.
     */
	public String getSpec_weight() {
		return spec_weight;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_weight(String spec_weight) {
		this.spec_weight = spec_weight;
	}
	
	/**
     * Retrieves the value of the property warrant.
     *
     * @return     A code String value.
     *             The warranty of product.
     */
	public String getSpec_warranty_summary() {
		return spec_warranty_summary;
	}
	
	/**
     * Sets a value to the property name.
     *
     * @param      A String value.
     *              The name of product.
     */
	public void setSpec_warranty_summary(String spec_warranty_summary) {
		this.spec_warranty_summary = spec_warranty_summary;
	} 
	
	
	

	
	
	
}//Product Entity Class

