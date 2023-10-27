<%@page import="com.mycom.electronics.electronics.dto.*, com.mycom.electronics.user.dto.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ElectronicsDto dto = (ElectronicsDto) request.getAttribute("electronicsDto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electronics Detail</title>
</head>
<body>
	<h1>Electronics Detail</h1>
	<p>
		electronicsCode
		<%=dto.getElectronicsCode()%>
	</p>
	<p>
		Electronics Model :
		<%=dto.getModel()%>
		Electronics Type:
		<%=dto.getType()%>
		Electronics Price:
		<%=dto.getPrice()%>
		Electronics Company:
		<%=dto.getCompany()%>
	</p>
	
		<a href = "/electronics/electronicsListJsp"> 리스트 보기 </a>
	
</body>

</html>