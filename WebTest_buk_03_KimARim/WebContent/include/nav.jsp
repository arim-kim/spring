<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "com.ssafy.test.dto.UserDto"%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<ul class="navbar-nav me-auto">
		<li class="nav-item"><a class="nav-link"
			href="${root}/electronics?action=list">전자기기 목록</a></li>
		<li class="nav-item"><a class="nav-link"
			href="${root}/electronics?action=goRegistPage">전자기기 정보 등록</a></li>
	</ul>
	<ul class="navbar-nav">
	
	
		<%
		UserDto user = (UserDto) request.getSession().getAttribute("user");
		if( user != null) {
			%>
		<li><%=user.getId() %>님 반갑습니다.</li>
		<li class="nav-item"><a class="nav-link"
			href="${root}/user?action=logout">로그 아웃</a></li>
		<% 
		}else {
			
			%>

		<li class="nav-item"><a class="nav-link"
			href="${root}/electronics?action=loginPage">로그인</a></li>

		<%
		}
	%>

	</ul>
</nav>