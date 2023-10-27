<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.mycom.electronics.user.dto.UserDto"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<a href="/electronics/electronicsMain"> 페이지로 </a>

	<%
		UserDto user = (UserDto) request.getSession().getAttribute("user");
	System.out.println(user);

	if (user != null) {
	%>
	<p id="loginstatus"><%=user.getId()%>님 login 완료
	</p>
	<button id="logout">logout 하기</button>

	<%
		} else {
	%>
	<button id="login">login</button>
	<%
		}
	%>

	<script>
	
	window.onload = function () {
	
		// 로그아웃 페이지 -> 로그인 요소가 없어서 해당 onclick이 null에 적용된다는 에러 발생 
		// 다 이렇게 null 체크 해주는 것 말고 어떤 방법이 있을까

		if(document.querySelector("#login") != null) {
			document.querySelector("#login").onclick = async function() {

				try {
				
					let userId = "ssafy";
					let userPassword = "ssafy";
					let urlParams = `?userId=\${userId}&userPassword=\${userPassword}`;
					let response = await fetch('/electronics/login' + urlParams);
					let data = await response.json();
					console.log(data);
					location.reload();
				} catch (error) {
					console.error(error);
				}
				
				
			};
		}
		
		if(document.querySelector("#logout") != null) {
			document.querySelector("#logout").onclick = async function() {
				
				try {
					let response = await fetch('/electronics/logout');
					let data = await response;
					console.log(data);
					location.reload();
				} catch (error) {
					console.error(error);
				}
				
			};
		}
	
	}

</script>
</body>
</html>
