package com.mycom.electronics.user.service;

import org.springframework.stereotype.Service;

import com.mycom.electronics.user.dao.UserDao;
import com.mycom.electronics.user.dto.UserDto;

@Service
public class UserServiceImpl implements UserService {

	UserDao dao;

	public UserServiceImpl(UserDao dao) {
		super();
		this.dao = dao;
	}

	@Override
	public UserDto login(String id, String password) {
		UserDto user = dao.login(id);
		System.out.println(user.getPw());
		if (user.getPw().equals(user.getPw())) {
			System.out.println();
			user.setPw(null);
			return user;
		}
		return null;
	}


}
