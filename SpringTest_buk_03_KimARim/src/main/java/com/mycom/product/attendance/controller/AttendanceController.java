package com.mycom.product.attendance.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycom.product.attendance.dto.AttendanceDto;
import com.mycom.product.attendance.service.AttendanceService;
import com.mycom.product.userInfo.dto.UserInfoDto;

@Controller
public class AttendanceController {

	AttendanceService service;

	public AttendanceController(AttendanceService service) {
		super();
		this.service = service;
	}

	@GetMapping("/regist")
	public String regist() {
		return "regist";
	}

	@PostMapping("/regist")
	@ResponseBody
	public int add(AttendanceDto dto) {
		System.out.println(dto);
		int ret = service.addAtt(dto);

		if (ret == 1) {
			System.out.println(dto + " 추가 성공");
		} else
			System.out.println(dto + " 추가 실패");
		return ret;

	}

	@GetMapping("/list")
	public ModelAndView add(HttpSession session) {
		ModelAndView mav = new ModelAndView("list");
		UserInfoDto dto = (UserInfoDto) session.getAttribute("user");
		if (dto.getPosition().equals("관리자")) {
			mav.addObject("list", service.allList());
		} else {
			mav.addObject("list", service.getList(dto.getUsernumber()));
		}
		return mav;
	}
	
	@GetMapping("delete/{ano}")
	public String delete(@PathVariable String ano) {
		service.delete(ano);
		return "redirect:/list";
	}
	
	@GetMapping("detail/{ano}")
	public ModelAndView detail(@PathVariable String ano) {
		ModelAndView mav = new ModelAndView("detail");
		mav.addObject("detail", service.detail(ano));
		return mav;
	}
}
