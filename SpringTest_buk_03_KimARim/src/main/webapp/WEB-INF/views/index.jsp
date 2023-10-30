<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.mycom.product.userInfo.dto.UserInfoDto"%>
<!DOCTYPE html>
<html>
<head>
<title>SSAFY</title>
<style type="text/css">
h1, h4 {
	text-align: center;
}

a {
	margin: 10px;
}

.inputtitle {
	display: inline-block;
	width: 80px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>
	<h1>출결 관리</h1>
	<fieldset>
		<h1>로그인 해주세요.</h1>
		<form action="" method="">
			<label for="id" class="inputtitle">아이디</label> <input type="text"
				id="id"> <br> <label for="pw" class="inputtitle">비밀번호</label>
			<input type="password" id="pw"> <br>
		</form>
		<input id="login" type="button" value="로그인">

	</fieldset>
	<hr>
	<h4>
		<a href="">출결 이슈 등록</a>
	</h4>
	<h4>
		<a href="">출결 이슈 목록</a>
	</h4>

	<script>
	window.onload = function() {
		
		document.querySelector("#login").onclick = async function() {

			try {
			
				let userId = document.querySelector("#id").value;
				let userPassword = document.querySelector("#pw").value;
				let urlParams = `?id=\${userId}&pw=\${userPassword}`;
				let response = await fetch('/product/login' + urlParams);
				let data = await response.json();
				console.log(data);
				
				if(data == 1) {
					window.location.href = "/product/regist";
				}else{
					window.location.href = "/product";
				}
				
			} catch (error) {
				console.error(error);
			}
			
			
		};
	
	}
	</script>
</body>
</html>