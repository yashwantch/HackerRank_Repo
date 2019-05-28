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
* The Customer class represents a Customer Record.
* It includes properties for storing data and methods for
* retrieving & setting values in the properties.
* 
* @author  Yashwant
*/

public class Customer implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/** The value is used for int storage representing Customer's ID. */
	private int id;

	/** The value is used for string storage representing Customer's First Name. */
	private String firstName;
	
	/** The value is used for string storage representing Customer's Last Name. */
	private String lastName;
	
	/** The value is used for string storage representing Customer's Date of Birth. */
	private String dateOfBirth;
	
	/** The value is used for string storage representing Customer's Email. */
	private String email;
	
	/** The value is used for string storage representing Customer's Password. */
	private String password;
	
	/** The value is used for string storage representing Customer's Gender. */
	private String gender;
	
	/** The value is used for string storage representing Customer's Contact. */
	private String contact;
	

	//GETTER/ACCESSOR METHODS
	
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code int value.
     *             The ID of Customer.
     */
	
	public int getId() {
		return id;
	}
	
	/**
     * Retrieves the value of the property firstName.
     *
     * @return     A code String value.
     *             The First Name of Customer.
     */
	public String getFirstName() {
		return firstName;
	}
	
	/**
     * Retrieves the value of the property lastName.
     *
     * @return     A code String value.
     *             The Last Name of Customer.
     */
	public String getLastName() {
		return lastName;
	}
	
	/**
     * Retrieves the value of the property dateofbirth.
     *
     * @return     A code String value.
     *             The Date of Birth of Customer.
     */
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	
	/**
     * Retrieves the value of the property email.
     *
     * @return     A code String value.
     *             The Email of Customer.
     */
	public String getEmail() {
		return email;
	}
	
	/**
     * Retrieves the value of the property password.
     *
     * @return     A code String value.
     *             The Password of Customer.
     */
	public String getPassword() {
		return password;
	}
	
	/**
     * Retrieves the value of the property gender.
     *
     * @return     A code String value.
     *             The Gender of Customer.
     */
	public String getGender() {
		return gender;
	}
	
	/**
     * Retrieves the value of the property Contact.
     *
     * @return     A code String value.
     *             The Contact of Customer.
     */
	public String getContact() {
		return contact;
	}
	
	//SETTER/MUTATOR METHODS
	
	/**
     * Sets a value to the property id.
     *
     * @param      A int value.
     *              The ID of Customer.
     */
	public void setId(int id) {
		this.id = id;
	}
	
	/**
     * Sets a value to the property firstName.
     *
     * @param      A int value.
     *             The First Name of Customer.
     */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	/**
     * Sets a value to the property lastName.
     *
     * @param      A int value.
     *             The Last Name of Customer.
     */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	/**
     * Sets a value to the property dateofbirth.
     *
     * @param      A int value.
     *             The Date of Birth of Customer.
     */
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
	/**
     * Sets a value to the property gender.
     *
     * @param      A int value.
     *             The Gender of Customer.
     */
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	/**
     * Sets a value to the property email.
     *
     * @param      A int value.
     *             The Email of Customer.
     */
	public void setEmail(String email) {
		this.email = email;
	}
	
	/**
     * Sets a value to the property password.
     *
     * @param      A int value.
     *             The Password of Customer.
     */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
     * Sets a value to the property contact.
     *
     * @param      A int value.
     *             The Contact of Customer.
     */
	public void setContact(String contact) {
		this.contact = contact;
	}
	
}//Customer Entity Class
