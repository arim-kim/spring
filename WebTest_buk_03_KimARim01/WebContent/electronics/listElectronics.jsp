<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import = "com.ssafy.test.dto.ElectronicsDto, java.util.* "%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/include/head.jsp" %>
</head>
<body>
	<%@ include file="/include/nav.jsp" %>

	<%-- 페이지만의 내용 --%>
	<div class="container p-4">
	  <h2>전자기기 목록</h2>
	  <table class="table table-hover" id ="table">
	    <thead>
	      <tr>
	        <th>고유번호</th>
	        <th>모델명</th>
	        <th>종류</th>
	        <th>가격</th>
	        <th>제조사</th>
	      </tr>
	    </thead>
	    <tbody>
	    	<%-- 전자기기 정보 개수만큼 반복 출력 --%>
	    	
	    	<% List<ElectronicsDto> e_list = (List<ElectronicsDto>) request.getAttribute("list"); 
	    	
	    		for(ElectronicsDto e : e_list) {
	    			
	    			
	    			
	    			%>
	    			
	    			
	    			
	    			
	    			<tr >
					<td><%= e.getElectronicsCode() %></td>
					<td><a href = "${root}/electronics?action=detail&code=<%=e.getElectronicsCode()%>"> <%= e.getModel() %></a>
					
					</td>
					<td><%= e.getType() %></td>
					<td><%= e.getPrice()%></td>
					<td><%= e.getCompany() %></td>
				</tr>
	    			
	    		
	    			<%
	    			
	    			
	    			
	    		}
	    	
	    	%>
			
	    </tbody>
	  </table>
	</div>
	
	<script>

	
	</script>

<%@ include file="/include/footer.jsp" %>