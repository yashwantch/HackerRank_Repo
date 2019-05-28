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
* The Contact class represents a Contact Record.
* It includes properties for storing data and methods for
* retrieving & setting values in the properties.
* 
* @author  Yashwant
*/

public class Contact {

	/** The value is used for int storage representing Contact's ID. */
	private int contid;
	
	/** The value is used for String storage representing Contact's First Name. */
	private String contFname;
	
	/** The value is used for String storage representing Contact's Lat Name. */
	private String contLname;
	
	/** The value is used for String storage representing Contact's Email. */
	private String email;
	
	/** The value is used for String storage representing Contact's Subject. */
	private String subject;
	
	/** The value is used for String storage representing Contact's Message. */
	private String message;
	
	/** The value is used for String storage representing Contact's Status. */
	private String status;
	
	/** The value is used for String storage representing Contact's Remarks. */
	private String remarks;
	
	

	/**
     * Retrieves the value of the property id.
     *
     * @return     A code int value.
     *             The ID of Contact.
     */
	public int getContid() {
		return contid;
	}
	
	/**
     * Sets a value to the property id.
     *
     * @param      A int value.
     *              The ID of Contact.
     */
	public void setContid(int contid) {
		this.contid = contid;
	}
	
	/**
     * Retrieves the value of the property First Name.
     *
     * @return     A code String value.
     *             The First Name of Contact.
     */
	public String getContFname() {
		return contFname;
	}
	

	/**
     * Sets a value to the property First Name.
     *
     * @param      A String value.
     *              The First Name of Contact.
     */
	public void setContFname(String contFname) {
		this.contFname = contFname;
	}
	
	/**
     * Retrieves the value of the property Last Name.
     *
     * @return     A code String value.
     *             The Last Name of Contact.
     */
	public String getContLname() {
		return contLname;
	}
	
	/**
     * Sets a value to the property Last Name.
     *
     * @param      A String value.
     *              The Last Name of Contact.
     */
	public void setContLname(String contLname) {
		this.contLname = contLname;
	}
	
	/**
     * Retrieves the value of the property Email.
     *
     * @return     A code String value.
     *             The Email of Contact.
     */
	public String getEmail() {
		return email;
	}
	
	/**
     * Sets a value to the property Email.
     *
     * @param      A String value.
     *              The Email of Contact.
     */
	public void setEmail(String email) {
		this.email = email;
	}
	
	/**
     * Retrieves the value of the property Subject.
     *
     * @return     A code String value.
     *             The Subject of Contact.
     */
	public String getSubject() {
		return subject;
	}
	
	/**
     * Sets a value to the property Subject.
     *
     * @param      A String value.
     *              The Subject of Contact.
     */
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	/**
     * Retrieves the value of the property Message.
     *
     * @return     A code String value.
     *             The Message of Contact.
     */
	public String getMessage() {
		return message;
	}
	
	/**
     * Sets a value to the property Message.
     *
     * @param      A String value.
     *              The Message of Contact.
     */
	public void setMessage(String message) {
		this.message = message;
	}
	
	/**
     * Retrieves the value of the property Status.
     *
     * @return     A code String value.
     *             The Status of Contact.
     */
	public String getStatus() {
		return status;
	}
	
	/**
     * Sets a value to the property Status.
     *
     * @param      A String value.
     *              The Status of Contact.
     */
	public void setStatus(String status) {
		this.status = status;
	}
	
	/**
     * Retrieves the value of the property Remarks.
     *
     * @return     A code String value.
     *             The Remarks of Contact.
     */
	public String getRemarks() {
		return remarks;
	}
	
	/**
     * Sets a value to the property Remarks.
     *
     * @param      A String value.
     *              The Remarks of Contact.
     */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}//Contact Entity Class
