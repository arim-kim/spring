<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.mycom.product.userInfo.dto.UserInfoDto"%>
<!DOCTYPE html>
<html>
<head>
<style>
#result {
	display: none;
}
</style>
<title>SSAFY</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>
	<form id="registForm">
		<label for="ano" class="inputtitle">이슈 번호</label> <input type="text"
			name="" id="ano"> <br>

		<%
			if (!user.getPosition().equals("관리자")) {
		%>

		<label for="usernumber" class="inputtitle">학번</label> <input
			type="text" value="<%=user.getUsernumber()%>" name="" id="usernumber" readonly ="readonly">
		<br> <label for="name" class="inputtitle">교육생명</label> <input
			type="text" name="" id="name" value="<%=user.getName()%>"> <br> <label for="rclass"
			class="inputtitle">반</label> <input type="number" name="" id="rclass"
			value="<%=user.getRclass()%>"> <br> <label for="rname"
			class="inputtitle">지역</label> <input type="text" name="" id="rname"
			value="<%=user.getRname()%>">
		<%
			} else {
		%>

		<label for="usernumber" class="inputtitle">학번</label> <input
			type="text" name="" id="usernumber">
		<br> <label for="name" class="inputtitle">교육생명</label> <input
			type="text" name="" id="name"> <br> <label for="rclass"
			class="inputtitle">반</label> <input type="number" name="" id="rclass"
			> <br> <label for="rname"
			class="inputtitle">지역</label> <input type="text" name="" id="rname"
			>

		<%
			}
		%>

		<br> <label for="issuedate" class="inputtitle">날짜</label> <input
			type="date" name="" id="issuedate"> <br> <label
			for="issue" class="inputtitle">사유</label> <input type="text" name=""
			id="issue"> <br>
	</form>
	<button type="button" id="regist">출결 이슈 등록</button>
	<button type="reset">초기화</button>
	<%@ include file="/WEB-INF/views/footer.jsp"%>


	<script>
	
	window.onload = function() {
			
			document.querySelector("#regist").onclick = async function() {
				// 비동기 요청
				// post로 전송할 데이터 준비
				// post로 전송 www-urlencoded
				
				let urlParams = new URLSearchParams({
					ano: document.querySelector("#ano").value,
					usernumber: document.querySelector("#usernumber").value,
					issuedate: document.querySelector("#issuedate").value,
					issue: document.querySelector("#issue").value,
				});
				
				
				let fetchOptions = {
						method: 'POST',
						body: urlParams
				}
				
				try {
					let response = await fetch('/product/regist', fetchOptions);
					let data = await response.json();
					// data로 이후 비동기 처리 결과
					console.log(data);
					
					if(data == 1){
						window.location.href = "/product/list";
					} else {
						window.location.href = "error.jsp";
					}
					window.location.href = "/product/list";

					
				} catch(error) {
					console.error(error);
				}
				
			};
			
		}
	
	</script>

</body>

</html>