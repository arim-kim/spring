package com.mycom.electronics.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycom.electronics.user.dto.UserDto;
import com.mycom.electronics.user.service.UserService;

@Controller
public class UserController {

	// 수정 반영 확인용
	UserService service;

	public UserController(UserService service) {
		super();
		this.service = service;
	}

	@GetMapping("login")
	@ResponseBody
	public int login(HttpSession session, String userId, String userPassword) {
		UserDto user = service.login(userId, userPassword);
		if (user != null) {
			session.setAttribute("user", user);
			return 1;
		}
		return -1;
	}
	
	@GetMapping("logout")
	@ResponseBody
	public void logout(HttpSession session) {
		System.out.println("logout 완료");
		session.invalidate();
	}
}
