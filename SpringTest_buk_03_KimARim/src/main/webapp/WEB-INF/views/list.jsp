<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.mycom.product.attendance.dto.AttendanceDto, java.util.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SSAFY</title>
<style>
table {
	width: 100%;
	border-collapse: collapse;
}

th {
	background: gray;
}

th, td {
	border: 1px dotted black;
	text-align: center;
}

#selectedDel {
	text-align: right;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>
	<form method="" action="">
		<%
			List<AttendanceDto> e_list = (List<AttendanceDto>) request.getAttribute("list");
		%>
		<table>
			<tr>
				<th>이슈번호</th>
				<th>학번</th>
				<th>교육생명</th>
				<th>반</th>
				<th>지역</th>
				<th>날짜</th>
				<th>사유</th>
				<th>삭제</th>
			</tr>

			<%
				for (AttendanceDto e : e_list) {
			%>
			<tr>
				<td><a href = "/product/detail/<%=e.getAno()%>"><%=e.getAno()%></td>
				<td><%=e.getUsernumber()%></td>
				<td><%=e.getName()%></td>
				<td><%=e.getRclass()%></td>
				<td><%=e.getRname()%></td>
				<td><%=e.getIssuedate()%></td>
				<td><%=e.getIssue()%></td>
				<td><a href="/product/delete/<%= e.getAno()%>">삭제</a></td>
			</tr>
			<%
				}
			%>

		</table>

		<input type="submit" value="선택항목삭제">
	</form>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>