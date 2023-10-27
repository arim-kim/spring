<%@page import="com.mycom.mydb.dto.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	StudentDto studentDto = (StudentDto) request.getAttribute("studentDto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Detail</title>
</head>
<body>
	<h1>Student Detail</h1>
	<p>
		Student ID:
		<%=studentDto.getStudent_id()%>
	</p>
	<p>
		Student Name :
		<%=studentDto.getStudent_nm()%>
		Student Email:
		<%=studentDto.getEmail()%>
		Student Phone:
		<%=studentDto.getPhone()%>
	</p>
</body>

</html>