package com.mycomapp.myapp2.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// 스프링이 설정을 이해할 수 있는 자바 클래스를 음미함 
@Configuration
public class CalcConfiguration {

	// DI
	@Bean
	public Calculator calculator() {
		return new Calculator();
	}
}
