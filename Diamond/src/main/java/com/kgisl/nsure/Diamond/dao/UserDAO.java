package com.kgisl.nsure.Diamond.dao;

import java.util.List;

import com.kgisl.nsure.Diamond.model.User;

public interface UserDAO {

	List<User> getAllUsers(String str_login_name);
	
	boolean authenticateSuccess(String loginName, String password);
}
