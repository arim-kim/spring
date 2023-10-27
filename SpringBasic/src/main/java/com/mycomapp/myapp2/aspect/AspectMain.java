package com.mycomapp.myapp2.aspect;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mycomapp.myapp2.aspect.sub.BusinessProcessSub;
public class AspectMain {

	public static void main(String[] args) {
		
		// 1) 읽으면서 xml을 읽고 -> AOP를 보고 @Aspect가 붙은 애들을 찾아냄 
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("aspect.xml");
		BusinessProcess bp = (BusinessProcess) context.getBean("businessProcess");
		BusinessProcess2 bp2 = (BusinessProcess2) context.getBean("businessProcess2");
		
		
		bp.bp();
		System.out.println("======================");
//		bp2.bp();
//		System.out.println("======================");
		bp.void_bp();
		System.out.println("======================");
		bp.int_bp();
		System.out.println("======================");
		bp.String_int_String_bp("s1", 0, "s2");

		BusinessProcessSub bps = (BusinessProcessSub) context.getBean("businessProcessSub");
		bps.m1();
		
		
		context.close();
	}

}
