package com.mycom.enjoytrip.user.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.mycom.enjoytrip.user.dao.UserDao;
import com.mycom.enjoytrip.user.dto.UserDto;

@Service	
public class UserServiceImpl implements UserService {
	
	UserDao userDao ;
	

	public UserServiceImpl(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public boolean registerUser(UserDto userDto) {
		// TODO Auto-generated method stub
		return userDao.registerUser(userDto);
	}

	@Override
	public boolean modifyUser(UserDto userDto) {
		// TODO Auto-generated method stub
		return userDao.modifyUser(userDto);
	}

	@Override
	public boolean deleteUser(String user_id) {
		return userDao.deleteUser(user_id);
	}

	@Override
	public UserDto getUser(String user_id) {
		return userDao.getUser(user_id);
	}

	@Override
	public UserDto getUser2(Map<String, String> map) {
		return userDao.getUser2(map);
	}

}
