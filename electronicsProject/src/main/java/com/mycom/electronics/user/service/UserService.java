package com.mycom.electronics.user.service;

import com.mycom.electronics.user.dto.UserDto;

public interface UserService {
	
	UserDto login(String id, String password);

}
