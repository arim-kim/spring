package com.mycomapp.myapp2.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

// 일반적 DI를 위한 어노테이션 
@Component
// Aspect임을 알리기 위한 어노테이션 
@Aspect
public class LogAspect {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	// @Pointcut(value = "execution(return type
	// package.Class(interface).method(parameters)")
	// 모든 리턴타입에 대해서 패캐지(지정) / 모든클래스에 대해 / 모든 메서드에 대해 / 모든 파라미터
	// Annotation
	// @Pointcut(value = "execution(*
	// com.mycomapp.myapp2.aspect.BusinessProcess.*(..))")
	//@Pointcut(value = "execution(int com.mycomapp.myapp2.aspect.*.*(..))")
	//@Pointcut(value = "execution(* com.mycomapp.myapp2.aspect.*.*(String, int, String))")
	@Pointcut(value = "execution(* com.mycomapp.myapp2.aspect.*.*(..))")
	private void logPointCut() {

	}
	
	// advise 설정하기
	// ("logPointCut()") 이 결합하기 직전에 하라는 것
	@Before("logPointCut()")
	public void beforeLog(JoinPoint joinpoint) {
		// LogAspect가 할 일 -> logging
		Signature signature = joinpoint.getSignature();
		// 호출하는 메서드의 이름 signature.getName()
		System.out.println("before " + signature.getName());
		logger.debug("[ Logger | Before " + signature.getName() + " ]");
	} // -> 얘를 weaving 시켜줘야함


	// advise 설정하기
	// ("logPointCut()") 결합 직후에 하라는 것
	@After("logPointCut()")
	public void afterLog(JoinPoint joinpoint) {
		// LogAspect가 할 일 -> logging
		Signature signature = joinpoint.getSignature();
		System.out.println("after " + signature.getName());
		logger.info("[ Logger | After " + signature.getName() + " ]");
	} // -> 얘를 weaving 시켜줘야함

}
