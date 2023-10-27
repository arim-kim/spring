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
	<form action="${root}/user" method="post">
	  	<input type="hidden" name="action" value="login">
	    <div class="form-group">
	      <label for="id">id:</label>
	      <input type="text" class="form-control" id="id" name="id" placeholder="ID 입력" value="">
	    </div>
	    <div class="form-group">
	      <label for="pw">Password:</label>
	      <input type="password" class="form-control" id="pw"  name="pw"  placeholder="비밀번호 입력" >
	    </div>

	  </form>
	  	    <button type="button" id="login" class="btn btn-primary">로그인</button>
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
				
					let userId = document.querySelector("#id").value;
					let userPassword = document.querySelector("#pw").value;
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
