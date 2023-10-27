package com.mycomapp.myapp2.configuration;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CalcMain {

	public static void main(String[] args) {
		// Spring DI by configuration 
		// AnnotationConfigApplicationContext의 의미는 @Configuration을 이해하는 Spring Context
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(CalcConfiguration.class);
		
		// id로 받아오는게 아니라 전달된 class를 보고 찾아오는 것임 
//		Calculator calculator = context.getBean(Calculator.class);
		
		// id 값으로 받아오는 법 2가지 
//		Calculator calculator = (Calculator)context.getBean("calculator");
		Calculator calculator = context.getBean("calculator", Calculator.class);

		int n = calculator.add(7, 3);
		System.out.println(n);

		context.close();
	}

}
