package com.ssafy.test.model.service;

import com.ssafy.test.model.dao.UserDaoImpl;

public class UserServiceImpl implements UserService{
	
	
	static UserServiceImpl instance = new UserServiceImpl();
	
	public static UserServiceImpl getInstance() {
		return instance; 
	}


	@Override
	public int login(String id, String password) {
		return UserDaoImpl.getInstance().login(id, password);
	}

}
