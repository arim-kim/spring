<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.mycom.product.userInfo.dto.UserInfoDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#loginInfo {
	text-align: right;
}

#head {
	text-align: center;
}

.inputtitle {
	display: inline-block;
	width: 100px;
	background: silver;
	text-align: center;
}
</style>
<c:set var="root" value="${pageContext.request.contextPath}" />
<div id="loginInfo">
	<%
		UserInfoDto user = (UserInfoDto) request.getSession().getAttribute("user");
	if (user != null) {
	%>
	<%=user.getName()%>
	(
	<%=user.getPosition()%>
	)님 로그인되었습니다.
	<%
		}
	%>
	<a href="/product/logout">로그아웃</a>
</div>

<h1 id="head">${title }</h1>
<hr>
