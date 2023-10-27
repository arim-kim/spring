<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스프링 mvc 화면입니다.</h1>
	<a href="${root}/basic/hello1"> Hello Spring</a>
	<a href="${root}/basic/hello2"> Hello2 Spring</a>
	<a href="${root}/param/single"> single param test </a>
	<a href="${root}/param/multi"> multi param test</a>
</body>
</html>