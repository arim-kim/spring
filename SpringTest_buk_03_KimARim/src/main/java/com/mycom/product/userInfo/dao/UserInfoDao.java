package com.mycom.product.userInfo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycom.product.userInfo.dto.UserInfoDto;

@Mapper
public interface UserInfoDao {

	UserInfoDto login(String id);

	int logout();
}
