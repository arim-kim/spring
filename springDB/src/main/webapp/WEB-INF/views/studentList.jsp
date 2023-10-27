<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.mycom.mydb.dto.*, java.util.*"%>

<%
	List<StudentDto> dto = (List<StudentDto>) request.getAttribute("studentList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>student List</title>
</head>
<body>
	<h1>student List</h1>

	<%
		for (StudentDto s : dto) {
	%>
	<p>
		student id :
		<%=s.getStudent_id()%></p>
	<p>
		student name :
		<%=s.getStudent_nm()%></p>
	<p>
		student phone :
		<%=s.getPhone()%></p>
	<p>
		student email :
		<%=s.getEmail()%></p>

	<%
		}
	%>
</body>
</html>