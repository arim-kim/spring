<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mycom.myapp.dto.*"%>
<%
	String seq = (String) request.getAttribute("seq");
EmpDto empDto = (EmpDto) request.getAttribute("empDto");
%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>viewTest3</h1>

	<h2>
		seq :
		<%=seq%></h2>
	<h2>
		empDto :
		<%=empDto.getEmployeeId()%>,
		<%=empDto.getEmail()%></h2>
</body>
</html>
