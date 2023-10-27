package com.mycom.myapp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycom.myapp.dto.EmpDto;

@Controller
public class ViewController {

	@GetMapping("viewTest1")
	public String viewTest1() {
		return "viewTest1"; // prefix + viewTest1 + .jsp
	}

	@GetMapping("viewTest2")
	public String viewTest2() {
		return "sub/viewTest2";
	}

	@GetMapping("viewTest3")
	public String viewTest3(Model model) {
		// data model을 추가하려면
		model.addAttribute("seq", "12345");
		model.addAttribute("empDto", new EmpDto(3, "길동", "삼", "sam@gildong.com", "2023-03-03"));
		return "viewTest3"; // prefix + viewTest1 + .jsp
	}

	@GetMapping("viewTest4")
	public ModelAndView viewTest4() {
		ModelAndView mav = new ModelAndView(); // parameter로 jsp 이름을 바로 지정해줄 수도 있음
		mav.addObject("seq", "12345");
		mav.addObject("empDto", new EmpDto(3, "길동", "삼", "sam@gildong.com", "2023-03-03"));
		mav.setViewName("viewTest4");
		return mav; // prefix + viewTest1 + .jsp
	}

	@GetMapping("/redirect")
	public String redirect() {
		System.out.println("redirect");
		return "redirect:/viewTest1"; // prefix + viewTest1 + .jsp
	}
}
