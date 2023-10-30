package com.mycom.product.userInfo.service;

import org.springframework.stereotype.Service;

import com.mycom.product.userInfo.dao.UserInfoDao;
import com.mycom.product.userInfo.dto.UserInfoDto;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	UserInfoDao dao;

	public UserInfoServiceImpl(UserInfoDao dao) {
		super();
		this.dao = dao;
	}

	@Override
	public UserInfoDto login(String id, String password) {
		UserInfoDto user = dao.login(id);
		System.out.println(user.getPw());
		if (user.getPw().equals(user.getPw())) {
			System.out.println();
			user.setPw(null);
			return user;
		}
		return null;
	}

}
