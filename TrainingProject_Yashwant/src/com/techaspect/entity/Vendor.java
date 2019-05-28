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

import java.io.Serializable;

/**
* The Vendor class represents a Vendor Record.
* It includes properties for storing data and methods for
* retrieving & setting values in the properties.
* 
* @author  Yashwant
*/

public class Vendor implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/** The value is used for int storage representing Vendor's ID. */
	private int id;
	
	/** The value is used for string storage representing Vendor's First Name. */
	private String firstName;
	
	/** The value is used for string storage representing Vendor's Last Name. */
	private String lastName;
	
	/** The value is used for string storage representing Vendor's email. */
	private String email;
	
	/** The value is used for string storage representing Vendor's Password. */
	private String password;
	
	/** The value is used for string storage representing Vendor's Contact. */
	private String contact;
	
	
	//GETTER/ACCESSOR METHODS
	
	
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code int value.
     *             The ID of Vendor.
     */
	public int getId() {
		return id;
	}
	
	/**
     * Retrieves the value of the property firstName.
     *
     * @return     A code String value.
     *             The First Name of Vendor.
     */
	public String getFirstName() {
		return firstName;
	}
	
	/**
     * Retrieves the value of the property lastName.
     *
     * @return     A code String value.
     *             The Last Name of Vendor.
     */
	public String getLastName() {
		return lastName;
	}
	
	/**
     * Retrieves the value of the property email.
     *
     * @return     A code String value.
     *             The Email of Vendor.
     */
	public String getEmail() {
		return email;
	}
	
	/**
     * Retrieves the value of the property password.
     *
     * @return     A code String value.
     *             The Password of Vendor.
     */
	public String getPassword() {
		return password;
	}
	
	/**
     * Retrieves the value of the property contact.
     *
     * @return     A code String value.
     *             The Contact of Vendor.
     */
	public String getContact() {
		return contact;
	}
	
	//SETTER/MUTATOR METHODS
	
	/**
     * Sets a value to the property id.
     *
     * @param      A int value.
     *              The ID of Vendor.
     */
	public void setId(int id) {
		this.id = id;
	}
	
	/**
     * Sets a value to the property firstName.
     *
     * @param      A String value.
     *             The First Name of Vendor.
     */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	/**
     * Sets a value to the property lastName.
     *
     * @param      A String value.
     *             The Last Name of Vendor.
     */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	/**
     * Sets a value to the property email.
     *
     * @param      A String value.
     *             The Email of Vendor.
     */
	public void setEmail(String email) {
		this.email = email;
	}
	
	/**
     * Sets a value to the property password.
     *
     * @param      A String value.
     *             The Passowrd of Vendor.
     */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
     * Sets a value to the property contact.
     *
     * @param      A String value.
     *             The Contact of Vendor.
     */
	public void setContact(String contact) {
		this.contact = contact;
	}
	
}
//Vendor Entity Class
