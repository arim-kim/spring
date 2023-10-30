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
	
	  <h2>전자기기 상세 정보</h2>
	  <% ElectronicsDto e = (ElectronicsDto) request.getAttribute("detail");  %>
  	  <a class="btn btn-danger" href="${root}/electronics?action=remove&code=<%=e.getElectronicsCode()%>">삭제</a>
	  <table class="table table-striped">
	
	  
	  <%  
	    	if(e != null) {
	    			
	    			
	    			%>
	    			
	    			
	    			<tr >
					<td>번호 <%= e.getElectronicsCode() %></td>
					<td>모델 <%= e.getModel() %>
					</td>
					<td><%= e.getType() %></td>
					<td><%= e.getPrice()%></td>
					<td><%= e.getCompany() %></td>
				</tr>
	    			
	    		
	    			<%
	    			
	    			
	    			
	    		}
	    	
	    	%>
	
	</div>
	
<%@ include file="/include/footer.jsp" %>