<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import=" com.mycom.product.attendance.dto.AttendanceDto"%>
<!DOCTYPE html>
<html>
<head>
<title>SSAFY</title>
<style>
form>label {
	display: inline-block;
	width: 100px;
}

form>:input {
	display: inline-block;
	width: 100px;
}
</style>
</head>

<body>
	<%
		AttendanceDto e = (AttendanceDto) request.getAttribute("detail");
	%>
	<%@ include file="/WEB-INF/views/header.jsp"%>


	<p><%=e.getAno()%></p>
	<p><%=e.getUsernumber()%></p>
	<p><%=e.getName()%></p>
	<p><%=e.getRclass()%></p>
	<p><%=e.getRname()%></p>
	<p><%=e.getIssuedate()%></p>
	<p><%=e.getIssue()%></p>

	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>
