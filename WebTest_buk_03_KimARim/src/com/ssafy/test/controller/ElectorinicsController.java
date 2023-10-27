package com.ssafy.test.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssafy.test.dto.ElectronicsDto;
import com.ssafy.test.dto.UserDto;
import com.ssafy.test.model.service.ElectronicsServiceImpl;
import com.ssafy.test.model.service.UserServiceImpl;

@WebServlet("/electronics")
public class ElectorinicsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println(action);
		switch (action) {
		case "goRegistPage" :
			RegistPage(request, response);
			break;
		case "loginPage":
			loginPage(request, response);
			break;
		case "list" : 
			listPage(request, response);
			break;
		case "regist":
			regist(request, response);
			break;
		case "detail":
			detail(request, response);
			break;
		case "remove":
			remove(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	void RegistPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("RegistPage 페이지로 이동 시키기");
		request.getRequestDispatcher("electronics/registElectronics.jsp").forward(request, response);

	}
	
	void loginPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("로그인 페이지로 이동 시키기");
		request.getRequestDispatcher("user/login.jsp").forward(request, response);

	}

	void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String electronicsCode = request.getParameter("electronicsCode");
		String model = request.getParameter("model");
		String etype = request.getParameter("etype");
		int price = Integer.parseInt(request.getParameter("price"));
		String company = request.getParameter("company");

		ElectronicsDto e = new ElectronicsDto(electronicsCode, model, etype, price, company);
		int re = ElectronicsServiceImpl.getInstance().addElec(e);
		
		if (re == 1) {
			System.out.println("추가 성공");
			request.getRequestDispatcher("/electronics?action=list").forward(request, response);

		} else {
			System.out.println("추가 실패");
			response.sendRedirect("error/error.jsp");
		}
	}
	
	void listPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ElectronicsDto> re = ElectronicsServiceImpl.getInstance().listElec();
		request.setAttribute("list", re);
		request.getRequestDispatcher("electronics/listElectronics.jsp").forward(request, response);

	}
	
	void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("code");
		String code = id.substring(0, id.length());
		System.out.println(code);
		ElectronicsDto e = ElectronicsServiceImpl.getInstance().getDetail(code);
		request.setAttribute("detail", e);
		
		if (e!= null) {
			System.out.println(e);
			request.getRequestDispatcher("/electronics/detailElectronics.jsp").forward(request, response);

		} else {
			System.out.println("error");
			response.sendRedirect("error/error.jsp");
		}
	}

	void remove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("code");
		String code = id.substring(0, id.length());
		System.out.println(code);
		int result = ElectronicsServiceImpl.getInstance().delete(code);
		
		if (result == 1) {
			request.getRequestDispatcher("/electronics?action=list").forward(request, response);
		} else {
			System.out.println("error");
			response.sendRedirect("error/error.jsp");
		}
	}

}
