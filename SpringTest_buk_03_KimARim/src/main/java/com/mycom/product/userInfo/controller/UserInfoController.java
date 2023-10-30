package com.mycom.product.userInfo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycom.product.userInfo.dto.UserInfoDto;
import com.mycom.product.userInfo.service.UserInfoService;

@Controller
public class UserInfoController {

	UserInfoService service;

	public UserInfoController(UserInfoService service) {
		super();
		this.service = service;
	}

	@GetMapping("login")
	@ResponseBody
	public int login(HttpSession session, String id, String pw) {
		UserInfoDto user = service.login(id, pw);
		System.out.println(id + ",");
		System.out.println(user);
		if (user != null) {
			session.setAttribute("user", user);
			return 1;
		}
		return -1;
	}

	@GetMapping("logout")
	public String logout(HttpSession session) {
		System.out.println("logout 완료");
		session.invalidate();
		return "index";
	}
}
