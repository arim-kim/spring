package com.mycom.electronics.user.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycom.electronics.user.dto.UserDto;

@Mapper
public interface UserDao {

	UserDto login(String id);

	int logout();
}
