package com.ssafy.hello.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

// service -> service
// dao -> repository 어노테이션 무조건 붙이기 
@Controller
@RequestMapping(value = "/basic") // 공통된 경로는 앞으로 빼주기
public class HelloController {

//	@RequestMapping(value = "/hello1")
//	public String Hello1() {
//		return "result/view"; 
//	}

	// 보통 이렇게 annotation에 getMapping, postMapping 이라고 구분지어서 씀
	@GetMapping(value = "/hello1")
	// parameter로 HttpServletRequest 가져갈 수 있음 -> 거의 안쓰긴해
	// 그러면 data(model)를 보내고싶다면 -> 실습에서 msg
	public String Hello1(Model model) {
		model.addAttribute("msg", "hello spring");
		return "result/view";
	}

	// model도 내부적으로 map으로 이루어짐. map을 쓸 수도 있따
//	@GetMapping(value = "/hello2")
//	public String Hello2(Map model) {
//		model.put("msg", "hello2 spring");
//		return "result/view";
//	}

	// 아예 Model과 View를 함께 보낼 수도 있음
//	@GetMapping(value = "/hello2")
//	public ModelAndView Hello2(Map model) {
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("msg", "MAV 데이터입니다.");
//		mav.setViewName("result/view");
//		return mav;
//	}

	// model만 보내는 경우 value의 이름이 자동으로 view의 이름이 됨
	// 자동으로 hello2를 찾아서 return함
	@GetMapping(value = "/hello2")
	public Model Hello2(Model model) {
		model.addAttribute("msg", "hello spring2");
		return model;
	}
	
}
