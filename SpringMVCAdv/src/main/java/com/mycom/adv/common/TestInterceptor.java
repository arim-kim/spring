package com.mycom.adv.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class TestInterceptor implements HandlerInterceptor {

	// dispatcher servlet을 통과하는 애들은 controller 가기 전 무조건 prehandle를 무조건 거침
	// 이때 설정을 통해 거치는 애들, 안거치는 애들을 설정할 수 있음
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("TestInterceptor >>>> " + request.getRequestURI());

		// #1 무조건 통과
		// return true;

		// #2 선택적인 통과 <- 로그인 했으면 통과 아니면 통과 못해
		HttpSession session = request.getSession();
		String login = (String) session.getAttribute("login");
		if ("success".equals(login)) {
			System.out.println("session 존재. 마이페이지로 이동 완료");
			return true;
		} else {
			System.out.println("session 없음. 로그인 페이지로 이동");
			response.sendRedirect(request.getContextPath() + "/login");
			return false;
		}

	}

}
