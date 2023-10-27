<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board Main</title>
</head>
<body>
	<h1>board Main</h1>
	<button id="getBoard">get</button>
	<button id="getMyBoard">getMyBoard</button>
	<button id="addBoardJSON">addBoardJSON</button>
	<button id="getuser2">getuser2</button>

	<script>
	
	window.onload = function() {
		
		document.querySelector("#getBoard").onclick = async function() {
			
			try {
				
				let response = await fetch("/enjoytrip/board/list");
				let data =  await response.json();
				
				console.log(data);
			} catch (error) {
				console.error(error);
			}
			
		};
		
		document.querySelector("#getMyBoard").onclick = async function() {
			
			try {
				
				let response = await fetch("/enjoytrip/board/myList/123");
				let data =  await response.json();
				
				console.log(data);
			} catch (error) {
				console.error(error);
			}
			
		};
		
		
		let boardData = {
				articleNo : null,
				loc_no : 125266,
				title: "title",
				user_id:123,
				content:"content new",
				visit_time : "2023-03-03",
				registerTime : "2023-03-03"
				
		};
		
		document.querySelector("#addBoardJSON").onclick = async function() {
			
			try {
				let fetchOptions = {
						method : 'POST',
						headers : {'Content-Type' : 'application/json'},
						body : JSON.stringify(boardData)
				}
				
				let response = await fetch("/enjoytrip/board/addBoardJSON", fetchOptions);
				let data =  await response.json();
				
				console.log(data);
			} catch (error) {
				console.error(error);
			}
			
		};
		
		document.querySelector("#getuser2").onclick = async function() {
			
			try {
				let userId = "123"
				let userNm = "123"
				let urlParams = `?userId=\${userId}&userNm=\${userNm}`
				let response = await fetch("/enjoytrip/user/getUser2" + urlParams);
				let data =  await response.json();
				
				console.log(data);
			} catch (error) {
				console.error(error);
			}
			
		};
	}
	
	
	</script>
</body>
</html>