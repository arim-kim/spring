package com.mycom.enjoytrip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycom.enjoytrip.Sido.service.SidoService;


@Controller
public class HomeController {

	SidoService service;
	
	
	public HomeController(SidoService service) {
		super();
		this.service = service;
	}


	@RequestMapping(value = "/", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView home() {
		System.out.println("/ 진입 ");
		ModelAndView mav = new ModelAndView("index");
		System.out.println(service.sidoList());
		mav.addObject("sidoList", service.sidoList());
		return mav;
	}
	

}
