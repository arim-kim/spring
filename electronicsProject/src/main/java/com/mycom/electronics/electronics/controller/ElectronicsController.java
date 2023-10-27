package com.mycom.electronics.electronics.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycom.electronics.electronics.dto.ElectronicsDto;
import com.mycom.electronics.electronics.service.ElectronicsService;


@Controller
public class ElectronicsController {

	private final ElectronicsService service;

	public ElectronicsController(ElectronicsService service) {
		super();
		this.service = service;
	}

	@GetMapping(value = "/electronicsMain")
	public String electronicsMain() {
		return "electronicsMain";
	}
	
	@GetMapping("/registElectronics")
	public String registElectronics() {
		return "registElectronics";
	}
	

	// 상세
	@GetMapping(value = "/electronicsDetail/{electronicsCode}")
	@ResponseBody
	public ElectronicsDto electronicsDetail(@PathVariable String electronicsCode) {
		System.out.println(electronicsCode);
		ElectronicsDto electronicsDto = service.getDetail(electronicsCode);
		return electronicsDto;
	}

	// 상세 JSP 페이지
	@GetMapping(value = "/electronicsDetailJsp/{electronicsCode}")
	public String electronicsDetailJsp(@PathVariable String electronicsCode, Model model) {
		System.out.println(electronicsCode);
		ElectronicsDto electronicsDto = service.getDetail(electronicsCode);
		model.addAttribute("electronicsDto", electronicsDto);
		return "electronicsDetail";
	}

	// 목록
	@GetMapping(value = "/electronicsList")
	@ResponseBody
	public List<ElectronicsDto> electronicsList() {
		System.out.println("electronicsList");
		List<ElectronicsDto> list = service.listElec();
		return list;
	}

	// 목록 jsp 페이지
	@GetMapping(value = "/electronicsListJsp")
	public ModelAndView electronicsListJsp() {

		List<ElectronicsDto> electronicsList = service.listElec();
		ModelAndView mav = new ModelAndView("electronicsList");
		mav.addObject("electronicsList", electronicsList);
		return mav;
	}

	// 등록
	@PostMapping(value = "/electronicsInsert")
	@ResponseBody
	public int electronicsInsert(ElectronicsDto electronicsDto) {
		return service.addElec(electronicsDto);
	}

	// 삭제
	@GetMapping(value = "/electronicsDelete/{electronicsCode}")
	@ResponseBody
	public int electronicsDelete(@PathVariable String electronicsCode) {
		return service.delete(electronicsCode);
	}

}
