<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%-- 페이지만의 내용 --%>
	<div class="container p-4">

		<h2>전자기기 정보 등록</h2>
		<form id="registForm" action="${root}/electronics" method="post">
			<input type="hidden" name="action" value="regist">
			<div class="form-group">
				<label for="electronicsCode">고유번호</label> <input type="text"
					class="form-control" id="electronicsCode" name="electronicsCode"
					placeholder="고유번호 입력">
			</div>
			<div class="form-group">
				<label for="model">모델명</label> <input type="text"
					class="form-control" id="model" name="model" placeholder="모델명 입력">
			</div>
			<div class="form-group">
				<label for="etype">종류</label> <select class="form-select" 
				id = "etype"
					name="etype">
					<option value="휴대폰" selected>휴대폰</option>
					<option value="태블릿">태블릿</option>
					<option value="노트북">노트북</option>
					<option value="스마트워치">스마트워치</option>
				</select>
			</div>
			<div class="form-group">
				<label for="price">가격</label> <input type="number"
					class="form-control" id="price" name="price" placeholder="가격 입력">
			</div>
			<div class="form-group">
				<label for="company">제조사</label> <input type="text"
					class="form-control" id="company" name="company"
					placeholder="제조사 입력">
			</div>


		</form>
		
		<button type="button" class="btn btn-primary" id="regist">등록</button>
		<a class="btn btn-secondary" href="${root}/electronics?action=list">취소</a>
	</div>
	
	<script>
		window.onload = function() {
			
			document.querySelector("#regist").onclick = async function() {
				// 비동기 요청
				// post로 전송할 데이터 준비
				// post로 전송 www-urlencoded
				
				let urlParams = new URLSearchParams({
					electronicsCode: document.querySelector("#electronicsCode").value,
					model: document.querySelector("#model").value,
					type: document.querySelector("#etype").options[document.querySelector("#etype").selectedIndex].value,
					price: document.querySelector("#price").value,
					company: document.querySelector("#company").value
				});
				
				
				let fetchOptions = {
						method: 'POST',
						body: urlParams
				}
				
				try {
					let response = await fetch('/electronics/electronicsInsert', fetchOptions);
					let data = await response.json();
					// data로 이후 비동기 처리 결과
					console.log(data);
					
					alert("electronicsCode가 `electronicsCode`인 electronics가 추가되었습니다");
					
					window.location.href = "/electronics/electronicsListJsp";
					
					
				} catch(error) {
					console.error(error);
				}
				
			};
		}
	
	
	</script>
</body>
</html>