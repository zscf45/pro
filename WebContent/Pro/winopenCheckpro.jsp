<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import ="com.music.*" %>
  <%@ include file ="ssl.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="text-align: center;"></div>
	<h3>Check</h3>
	
	<%
	
	String id = request.getParameter("id");
	int cnt=dao.duplecateID(id);
	out.print("ID : <strong>" + id + "</stong>");
	
	if(cnt==0){
		out.print("<p>사용가능한 ID입니다.</p>");
		out.print("<a href='javascript:apply(\"" + id + "\")'>[적용]</a>");
		
	%>
	<script>
		function apply(id) {
			opener.document.signupForm.id.value=id;
			window.close();
		}
	</script>
	<%
	}else{
		out.print("<p style='color: red'>해당 아이디는 사용하실 수 없습니다.</p>");
		
	}
	%>
	<hr>
	<a href ="javascript:history.back()">Back</a>
	<a href ="javascript:window.close()">Close</a>
</body>
</html>