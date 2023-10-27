package com.controller.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.controller.dto.UserDto;

@Controller
@RequestMapping("user")
public class UserController {

	// method옵션을 안넣으면 다 해줌
	@GetMapping(value = "/createAccount")
	public String getcreateAccount() {
		return "user/createAccount";
	}

	@PostMapping(value = "/createAccount")
	public String postcreateAccount(UserDto userdto) {
		System.out.println("createAccount -> login");
		return "user/login";
	}

	@GetMapping(value = "/login")
	public String login() {
		return "login";
	}

	@GetMapping(value = "/modifyUsers")
	public String modifyUsers() {
		return "modifyUsers";
	}

	@GetMapping(value = "/removeUser")
	public String removeUser() {
		return "removeUser";
	}

	@PostMapping(value = "/login")
	public String loginPost(String userId, String userPassword, HttpSession session) {
		System.out.println(userId);
		System.out.println(userPassword);
		session.setAttribute("userId", userId);
		return "loginResult"; // 성공시 홈페이지 메인으로 이동
	}

	// Parameter Process 로 파라미터값들을 처리할 수 있음 -> 사용자 입력값등

	// Header data annotation -> Header에 사용 가능

	// RequestBody(json받기) ResponseBody(json주기)

}
