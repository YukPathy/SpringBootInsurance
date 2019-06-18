package com.kgisl.nsure.Diamond.model;

public class User {

	private long userId;
	private String userCode;
	private String userName;
	private String userEmail;
	private String password;
	
	/**
	 * 
	 */
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @param userId
	 * @param userCode
	 * @param userName
	 * @param userEmail
	 * @param password	 
	 */
	public User(long userId, String userCode, String userName, String userEmail, String password) {
		this.userId = userId;
		this.userCode = userCode;
		this.userName = userName;
		this.userEmail = userEmail;
		this.password = password;
	}
	
	/**
	 * @param userId
	 * @param userCode
	 * @param userName
	 * @param userEmail
	 * @param password 
	 */
	public User(UserForm userForm) {
		this.userId = userForm.getUserId();
		this.userCode = userForm.getUserCode();
		this.userName = userForm.getUserName();
		this.userEmail = userForm.getUserEmail();
		this.password = userForm.getPassword();
	}
	
	/**
	 * @return the userId
	 */
	public long getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(long userId) {
		this.userId = userId;
	}
	/**
	 * @return the userCode
	 */
	public String getUserCode() {
		return userCode;
	}
	/**
	 * @param userCode the userCode to set
	 */
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the userEmail
	 */
	public String getUserEmail() {
		return userEmail;
	}
	/**
	 * @param userEmail the userEmail to set
	 */
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
