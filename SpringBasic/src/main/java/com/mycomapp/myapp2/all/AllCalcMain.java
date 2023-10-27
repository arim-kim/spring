package com.mycomapp.myapp2.all;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AllCalcMain {

	public static void main(String[] args) {
		// Spring DI by annotation 
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("all-cal-annotation.xml");
		
		// id로 받아오는게 아니라 전달된 class를 보고 찾아오는 것임 
//		Calculator calculator = context.getBean(Calculator.class);
		
		// id 값으로 받아오는 법 2가지 
//		Calculator calculator = (Calculator)context.getBean("calculator");
		AllCalculator useCalc = (AllCalculator) context.getBean("allCalculator");
		int n = useCalc.add(7, 3);
		System.out.println(n);

		context.close();
	}

}
