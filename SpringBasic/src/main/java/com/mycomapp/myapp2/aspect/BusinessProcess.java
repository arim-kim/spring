package com.mycomapp.myapp2.aspect;

import org.springframework.stereotype.Component;

@Component
public class BusinessProcess {

	public void bp() {
		System.out.println("Business Process");
	}

	public void void_bp() {
		System.out.println("void pb() Business Process");
	}

	public int int_bp() {
		System.out.println("int pb() Business Process");
		return 0;
	}
	
	public int String_int_String_bp(String s1, int i, String s2) {
		System.out.println("String_int_String_bp() Business Process");
		return 0;
	}
}
