package com.mycom.enjoytrip.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycom.enjoytrip.user.dto.UserDto;
import com.mycom.enjoytrip.user.service.UserService;

@Controller
@RequestMapping("user")
// 서비스 먼저 들고오기 
public class UserController {

	UserService userService;

	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}

	// method옵션을 안넣으면 다 해줌
	@GetMapping(value = "/createAccount")
	public String getcreateAccount() {
		return "user/createAccount";
	}

//	@GetMapping(value = "/login")
//	public String login() {
//		return "login";
//	}

	@GetMapping(value = "/getUser/{userId}")
	@ResponseBody
	public UserDto login(@PathVariable String userId) {
		UserDto dto = null;
		dto = userService.getUser(userId);
		return dto;
	}

	@GetMapping(value = "/getUser2")
	@ResponseBody
	public UserDto getUser2(String userId, String userNm) {
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("userNm", userNm);
		UserDto dto = userService.getUser2(map);
		System.out.println(dto);
		System.out.println(userId + ", " + userNm);
		return dto;
	}

	@PostMapping(value = "/createAccount")
	@ResponseBody
	public boolean postcreateAccount(UserDto userdto) {
		return userService.registerUser(userdto);
	}

	@PostMapping(value = "/modifyUsers")
	@ResponseBody
	public boolean modifyUsers(UserDto userdto) {
		return userService.modifyUser(userdto);
	}

	@GetMapping(value = "/removeUser/{user_id}")
	@ResponseBody
	public boolean removeUser(@PathVariable String user_id) {
		return userService.deleteUser(user_id);
	}

	@PostMapping(value = "/login")
	public String loginPost(String userId, String userPassword, HttpSession session) {
		System.out.println(userId);
		System.out.println(userPassword);
		session.setAttribute("userId", userId);
		return "loginResult"; // 성공시 홈페이지 메인으로 이동
	}

}
