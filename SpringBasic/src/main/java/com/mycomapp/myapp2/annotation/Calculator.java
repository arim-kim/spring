package com.mycomapp.myapp2.annotation;

import org.springframework.stereotype.Component;

@Component("calc")
public class Calculator {
	public int add(int n1, int n2) {
		return n1 + n2;
	}
}
