<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="music.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%
        request.setCharacterEncoding("euc-kr");
        
        String id = (String)session.getAttribute("id");
        UserDBDAO userdao = new UserDBDAO();
      
        
        UserDBBean userbean = userdao.UserUpdate(id);
 
   
%>
<body>
<%=session.getAttribute("id") %>정보수정
<table border="1">
<tr>
<td>
회원아이디 <input type="hidden" name="id" value ="<%=userbean.getId()%>"/>
</td>
<td>
회원비밀번호:<input type="text" name="pw" value=" <%=userbean.getPw()%>"/>
</td>
<td>
회원이름: :<input type="text" name="name" value=" <%=userbean.getName()%>"/>
</td>
 
<td>
회원번호: :<input type="text" name="phone" value=" <%=userbean.getPhone()%>"/>
</td>
<td>
<%=session.getAttribute("id")%>님이 방문함
</td>
<tr><td><input type="button" value="수정" onclick="location.href = 'userupdatepro.jsp'"></td></tr>
</body>
</html>
