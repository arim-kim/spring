package com.mycomapp.myapp2.all;

import org.springframework.stereotype.Component;

@Component("real")
public class CalculatorImpl implements Calculator{

	@Override
	public int add(int n1, int n2) {
		System.out.println("calculatorImpl add()");
		return n1 + n2;
	}

}
