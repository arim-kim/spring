<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emp Main</title>
</head>
<body>
	<h1>Emp Main</h1>
	<button id="btnEmpDetail">emp 상세 보기</button>
	<button id="btnEmpList">emp 리스트</button>
	<button id="btnEmpInsert">emp 넣기</button>
	<button id="btnEmpInsertJSON">empJSON넣기</button>
	<button id="btnEmpUpdate">emp 업데이트</button>
	<button id="btnEmpDelete">emp 삭제</button>
	<button id="btnEmpDetailJsp">emp 상세 jsp</button>
	<button id="btnEmpListJsp">empList상세 jsp</button>

	<script>
		window.onload = function() {
			document.querySelector("#btnEmpDetail").onclick = async function() {
				try {
					
					let response = fetch('/mydb/empDetail/2'); // 옵션 없으므로 get
					let data = await response.json(); // json으로 변환 
					
					// data로 이후 비동기 처리 결과를 보여줘야 
					console.log(data);
				} catch (error) {

				}
			};
			
			document.querySelector("#btnEmpListJsp").onclick = async function() {
				window.location.href = "/mydb/empListJsp";
			};
			
			
			document.querySelector("#btnEmpList").onclick = async function() {
				try {
					
					let response = await fetch('/mydb/empList'); // 옵션 없으므로 get
					let data = await response.json(); // json으로 변환 
					
					// data로 이후 비동기 처리 결과를 보여줘야 
					console.log(data);
				} catch (error) {

				}
			}
			
			document.querySelector("#btnEmpInsert").onclick = async function() {
				try {
					
					// 비동기 요청 
					// post로 전송할 데이터 준비 
					// post 전송 www-urlencoded
					let urlParams = new URLSearchParams({
						 employeeId : 4,
						 firstName : '길동',
						 lastName : '사',
						 email : 'sa@gildong.com',
						 hireDate : '2020-03-03'
					});
					
					let fetchOptions = {
							method : 'POST',
							body : urlParams
					}
					
					let response = await fetch('/mydb/empInsert', fetchOptions); // 옵션 없으므로 get
					let data = await response.json(); // json으로 변환 
					
					// data로 이후 비동기 처리 결과를 보여줘야 
					console.log(data);
					
				} catch (error) {
					console.error(error);
				}
			}
			
			let empUpdateData = {
				 employeeId : 4,
				 firstName : '길동2',
				 lastName : '사2',
				 email : 'sa@gildong2.com',
				 hireDate : '2020-03-03'
			};
			
			document.querySelector("#btnEmpUpdate").onclick = async function() {
				try {
				
					let fetchOptions = {
							method : 'POST',
							body : new URLSearchParams(empUpdateData)
					}
					
					let response = await fetch('/mydb/empUpdate', fetchOptions); // 옵션 없으므로 get
					let data = await response.json(); // json으로 변환 
					
					// data로 이후 비동기 처리 결과를 보여줘야 
					console.log(data);
					
				} catch (error) {
					console.error(error);
				}
			};
			
			document.querySelector("#btnEmpDelete").onclick = async function() {
				try {
				
					
					let response = await fetch('/mydb/empDelete/4'); // 옵션 없으므로 get
					let data = await response.json(); // json으로 변환 
					
					// data로 이후 비동기 처리 결과를 보여줘야 
					console.log(data);
					
				} catch (error) {
					console.error(error);
				}
			};
			
			// javascript object
			let empInserteData = {
					 employeeId : 5,
					 firstName : '길동',
					 lastName : '오',
					 email : 'oh@gildong.com',
					 hireDate : '2020-03-03'
			};
			// json insert
			document.querySelector("#btnEmpInsertJSON").onclick = async function() {
				try {
					
					
					
					let fetchOptions = {
							method : 'POST',
							headers : {
								// json으로 보낸다는 의미
								'Content-Type' : 'application/json'
							},
							body : JSON.stringify(empInserteData)
					}
					
					let response = await fetch('/mydb/empInsertJSON', fetchOptions); // 옵션 없으므로 get
					let data = await response.json(); // json으로 변환 
					
					// data로 이후 비동기 처리 결과를 보여줘야 
					console.log(data);
					
				} catch (error) {
					console.error(error);
				}
			};
			
			document.querySelector("#btnEmpDetailJsp").onclick =  function() {
				// 동기화된 페이지 요청  -> 페이지 로드 동안 다른일을 하지 못함 
				window.location.href = "/mydb/empDetailJsp/2";
			};
		}
	</script>
</body>
</html>