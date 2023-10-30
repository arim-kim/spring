package com.ssafy.test.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssafy.test.dto.UserDto;
import com.ssafy.test.model.service.UserServiceImpl;

@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
	
		case "login":
			login(request, response);
			break;
		case "logout" : 
			logout(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int re = UserServiceImpl.getInstance().login(id, pw);
		if (re == 1) {
			System.out.println("로그인 실패");
		} else {
			System.out.println("로그인 성공");
			request.getSession().setAttribute("user", new UserDto(id, pw));
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}

	}
	

	void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getSession().invalidate();
		request.getRequestDispatcher("/index.jsp").forward(request, response);

	}

}
