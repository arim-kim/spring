package com.mycom.enjoytrip.user.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.mycom.enjoytrip.user.dto.UserDto;

@Mapper
public interface UserDao {

	boolean registerUser(UserDto userDto);

	boolean modifyUser(UserDto userDto);

	boolean deleteUser(String user_id);
	
	UserDto getUser(String user_id);
	
	UserDto getUser2(Map<String, String> map);
	
}
