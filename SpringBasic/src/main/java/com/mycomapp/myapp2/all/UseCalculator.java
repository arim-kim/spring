package com.mycomapp.myapp2.all;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UseCalculator {

	// DI 해달라고 요청하는 것 #1 injection
//	@Autowired
//	Calculator calculator ;

	// DI 해달라고 요청하는 것 #2 setter injection 자동으로 setter호출해서
//	Calculator calculator ;
//	@Autowired
//	public void setCalculator(Calculator calculator) {
//		// 코드 추가 가능 
//		this.calculator = calculator;
//	}

	// DI 해달라고 요청하는 것 #3 constructor injection
	AllCalculator calculator;
	// @Autowired -- 생성자시에는 생략 가능 
	public UseCalculator(AllCalculator calculator) {
		// 코드 추가 가능
		this.calculator = calculator;
	}

	public int add(int n1, int n2) {
		return calculator.add(n1, n2);
	}

}
