package com.mycomapp.myapp2.all;

import org.springframework.stereotype.Component;

@Component("fake")
public class CalculatorImpl2 implements Calculator{

	@Override
	public int add(int n1, int n2) {
		System.out.println("calculatorImpl2 add()");
		return n1 + n2;
	}

}
