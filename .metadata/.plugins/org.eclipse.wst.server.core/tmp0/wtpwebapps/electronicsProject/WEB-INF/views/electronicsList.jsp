<%@page import="java.util.List"%>
<%@page
	import="com.mycom.electronics.electronics.dto.*, com.mycom.electronics.user.dto.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<ElectronicsDto> dto = (List<ElectronicsDto>) request.getAttribute("electronicsList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electronics List</title>
</head>
<body>

	<table class="table table-hover" id="table">
		<thead>
			<tr>
				<th>고유번호</th>
				<th>모델명</th>
				<th>종류</th>
				<th>가격</th>
				<th>제조사</th>
				<th>기타</th>
			</tr>
		</thead>
		<tbody>
			<%-- 전자기기 정보 개수만큼 반복 출력 --%>

			<%
				List<ElectronicsDto> e_list = (List<ElectronicsDto>) request.getAttribute("list");

			for (ElectronicsDto e : dto) {
			%>

			<tr>
				<td><%=e.getElectronicsCode()%></td>
				<td><%=e.getModel()%></td>
				<td><%=e.getType()%></td>
				<td><%=e.getPrice()%></td>
				<td><%=e.getCompany()%></td>
				<td>
					<button class="detailElec" id="detail"
						data-code="<%=e.getElectronicsCode()%>">상세보기</button> <%
 						UserDto user = (UserDto) request.getSession().getAttribute("user");
						System.out.println(user);
 						if (user != null) {
 							if (user.getId().equals("admin")) {
 						%>

							<button class="deleteElec" id="delete" data-code="<%=e.getElectronicsCode()%>">삭제</button> <%
 							}
 						}
 						%>

				</td>
			</tr>


			<%
				}
			%>

		</tbody>
	</table>

	<a href="/electronics/registElectronics"> 추가하기 </a>
	<script>
	window.onload = function () {
		
		const deleteButtons = document.querySelectorAll(".deleteElec");
		const detailButtons = document.querySelectorAll(".detailElec");
		
		
		for(const button of deleteButtons){

			button.onclick = async function(e) {
				
				alert("1");
				try {
					let param = e.target.getAttribute( 'data-code' );
					console.log(param);
					
					let response = await fetch('/electronics/electronicsDelete/' + param); // 옵션 없으므로 get
					let data = await response.json(); // json으로 변환 
					
					// data로 이후 비동기 처리 결과를 보여줘야 
					console.log(data);
					alert("삭제했습니다");
					
					window.location.href = "/electronics/electronicsListJsp";
					
				} catch (error) {
					console.error(error);
				}
			};
		}
		
		for(const button of detailButtons){

			button.onclick = async function(e) {
				let param = e.target.getAttribute( 'data-code' );
				window.location.href = "/electronics/electronicsDetailJsp/" + param;
			};
		}
		
	}
	

	</script>
</body>
</html>