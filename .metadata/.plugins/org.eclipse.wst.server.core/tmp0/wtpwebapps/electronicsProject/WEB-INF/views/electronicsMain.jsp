<%@page import="com.mycom.electronics.electronics.dto.*, com.mycom.electronics.user.dto.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electronics Main</title>
</head>
<body>
	<h1>Electronics Main</h1>
	<button id="addElec">addElec 추가</button>
	<button id = "listElecJsp"> Electronics 목록 jsp </button>
	
	
	<script>
	window.onload = function() {
		
		document.querySelector("#addElec").onclick = async function() {
			window.location.href = "/electronics/registElectronics";
		};
		
		
		// 목록 에서 추가하기 만들기 
		// 상세보기에서 목록으로 가기 
		// 로그인 입력하는 거 만들기 
		
		
		document.querySelector("#listElecJsp").onclick = async function() {
			window.location.href = "/electronics/electronicsListJsp";
		};
		
	
		
	
	}

</script>

</body>



</html>