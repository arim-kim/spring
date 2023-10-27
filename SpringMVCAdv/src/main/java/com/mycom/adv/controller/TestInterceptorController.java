package com.mycom.adv.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

// 모두 json으로 리턴하기 
// jsp 사용 X

@RestController // @Controller + @ResponseBody
public class TestInterceptorController {

	@GetMapping("/login")
	public String m1() {
		System.out.println("/login");
		return "/login";
	}

	@GetMapping("/logout")
	public String m3(HttpSession session) {
		System.out.println("/logout");
		session.invalidate();
		return "/logout";
	}

	@GetMapping("/users") // 마이페이지 <- 로그인, 로그아웃 해야지 가능하다 
	public String m4() {
		System.out.println("/users");
		return "/users";
	}

	@GetMapping("/login/ok") // 로그인 성공 페이지 요청
	public String m2(HttpSession session) {
		System.out.println("/login");
		session.setAttribute("login", "success");
		return "/login/ok";
	}
}
