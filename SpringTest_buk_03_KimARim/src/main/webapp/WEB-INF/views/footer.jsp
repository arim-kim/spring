<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.mycom.product.userInfo.dto.UserInfoDto"
	pageEncoding="UTF-8"%>
<hr>
<% UserInfoDto u = (UserInfoDto) request.getSession().getAttribute("user"); %>
<a href="${root }">홈으로</a>
&nbsp;
<a href="/product/regist">출결 이슈 등록</a>
&nbsp;
<a href="/product/list">출결 목록 보기</a>