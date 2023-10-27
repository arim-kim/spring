package com.mycomapp.myapp2.all;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class AllCalculator {
	@Autowired
	@Qualifier("fake")
	Calculator calculator; // interface <= DI가 일어나는데, 인터페이스는 객체 생성 불가능. 그러니까 interface를 implements한 객체를 생성 

	public int add(int n1, int n2) {
		return calculator.add(n1, n2);
	}
}
