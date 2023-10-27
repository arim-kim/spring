package com.mycom.enjoytrip.user.service;

import com.mycom.enjoytrip.user.dto.UserDto;

public interface UserService {

	boolean registerUser(UserDto userDto);

	boolean modifyUser (UserDto userDto);

	boolean deleteUser(String user_id);
	
	UserDto getUser(String user_id);
}
