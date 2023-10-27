package com.mycomapp.myapp2.aspect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AspectTestController {

	public static void main(String[] args) {

	}

	@Autowired
	BusinessProcess bp;

	// baseurl/callBp에 해당 함수를 연결해줌 
	@RequestMapping(value = "/callBp", method = RequestMethod.GET)
	public void callBp() {
		bp.bp();
	}

}
