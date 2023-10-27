package com.ssafy.hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.hello.model.MultiDto;

@Controller
@RequestMapping("/param")
public class ParamController {

	@GetMapping("/single")
	public String getsingle() {
		return "single";
	}

	@GetMapping("/multi")
	public String getmulti() {
		return "multi";
	}

	@PostMapping("/single")
	public String postsingle(@RequestParam("userid") String userId, String username ,@RequestParam(value = "area", required = false, defaultValue = "100" ) int area) {
		// 무조건 가져와야하는 속성에는 required = true
		// default value 설정 -> defaultValue 
		System.out.println(userId);
		System.out.println(username);
		System.out.println(area);
		return "single";
	}

	@PostMapping("/multi")
	public String postmulti(@ModelAttribute("info") MultiDto multiDto) {
		System.out.println(multiDto);
		return "result/view";
	}
}
