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
* The Address class represents a Address Record.
* It includes properties for storing data and methods for
* retrieving & setting values in the properties.
* 
* @author  Yashwant
*/

public class Address {
	
	/** The value is used for int storage representing Address's ID. */
	private int addid;
	
	/** The value is used for int storage representing Customer's ID. */
	private int cid;
	
	/** The value is used for String storage representing Address's Details. */
	private String addressdetails;
	
	/** The value is used for String storage representing Address's city. */
	private String city;
	
	/** The value is used for String storage representing Address's Zip. */
	private String zip;
	
	/** The value is used for String storage representing Address's Country. */
	private String country;
	
	/** The value is used for String storage representing Address's State. */
	private String state;
	
	
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code int value.
     *             The ID of Address.
     */
	public int getAddid() {
		return addid;
	}
	
	/**
     * Sets a value to the property id.
     *
     * @param      A int value.
     *              The ID of Address.
     */
	public void setAddid(int addid) {
		this.addid = addid;
	}
	
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code int value.
     *             The ID of Customer.
     */
	public int getCid() {
		return cid;
	}
	
	/**
     * Sets a value to the property id.
     *
     * @param      A int value.
     *              The ID of Customer.
     */
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	
	/**
     * Retrieves the value of the property Address Details.
     *
     * @return     A code String value.
     *             The Details of Address.
     */
	public String getAddressDetails() {
		return addressdetails;
	}
	
	
	/**
     * Sets a value to the property Details.
     *
     * @param      A String value.
     *              The Details of Address.
     */
	public void setAddressDetails(String addressdetails) {
		this.addressdetails = addressdetails;
	}
	
	
	/**
     * Retrieves the value of the property Address city.
     *
     * @return     A code String value.
     *             The city of Address.
     */
	public String getCity() {
		return city;
	}
	
	/**
     * Sets a value to the property  city.
     *
     * @param      A String value.
     *              The city of Address.
     */
	
	public void setCity(String city) {
		this.city = city;
	}
	
	/**
     * Retrieves the value of the property Address Zip.
     *
     * @return     A code String value.
     *             The Zip of Address.
     */
	public String getZip() {
		return zip;
	}
	
	/**
     * Sets a value to the property  Zip.
     *
     * @param      A String value.
     *              The Zip of Address.
     */
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	/**
     * Retrieves the value of the property Address Country.
     *
     * @return     A code String value.
     *             The Country of Address.
     */
	public String getCountry() {
		return country;
	}
	
	/**
     * Sets a value to the property  Country.
     *
     * @param      A String value.
     *              The Country of Address.
     */
	public void setCountry(String country) {
		this.country = country;
	}
	
	/**
     * Retrieves the value of the property Address State.
     *
     * @return     A code String value.
     *             The State of Address.
     */
	public String getState() {
		return state;
	}
	
	/**
     * Sets a value to the property  State.
     *
     * @param      A String value.
     *              The State of Address.
     */
	public void setState(String state) {
		this.state = state;
	}
	
	

}//Address Entity Class
