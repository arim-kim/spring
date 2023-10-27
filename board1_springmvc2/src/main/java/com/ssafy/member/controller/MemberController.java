package com.ssafy.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.member.model.MemberDto;
import com.ssafy.member.model.service.MemberService;

@Controller
@RequestMapping("user")
public class MemberController {

	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	private final MemberService memberService;

	public MemberController(MemberService memberService) {
		super();
		this.memberService = memberService;
	}

	@GetMapping("/join")
	public String join() {
		return "user/join";
	}

	@PostMapping("/join")
	public String join(MemberDto memberDto) throws Exception {
		System.out.println("회원가입 시도");
		logger.debug("join : {}", memberDto);
		memberService.joinMember(memberDto);
		return "redirect:user/login";
	}

	@GetMapping("/login")
	public String login() {
		System.out.println("login으로 이동 시도");
		return "user/login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("userid") String userId, @RequestParam("userPwd") String userPwd, HttpSession session) 
	throws Exception{
		MemberDto memberDto = memberService.loginMember(userId, userPwd);
		if(memberDto != null) {
			session.setAttribute("userinfo", memberDto);
			return "redirect:/";
		}
		return "user/login";
	}

	// 이런식으로 할 수도 있음 
//	@ExceptionHandler(Exception.class)
//	public Object error(Exception e) {
//		Object obj = null;
//		// e를 여기서 처리함
//		return obj;
//	}
}
