package com.mycom.product.userInfo.service;

import com.mycom.product.userInfo.dto.UserInfoDto;

public interface UserInfoService {

	UserInfoDto login(String id, String password);

}
