<%@page import="java.awt.Window"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="DBconnect.jsp" %>
	<%
		PreparedStatement pstm = null;
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String ssn = request.getParameter("ssn");
		String phone = request.getParameter("phone");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String nname = request.getParameter("nickname");
		String agency1 = request.getParameter("agency1");
		String agency2 = request.getParameter("agency2");
		String agency3 = request.getParameter("agency3");
		String agency4 = request.getParameter("agency4");
		String email = request.getParameter("email");
		
		try{
			String sql = "INSERT INTO DTB_TBL VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, id);
			pstm.setString(2, pw);
			pstm.setString(3, name);
			pstm.setString(4, ssn);
			pstm.setString(5, nname);
			pstm.setString(6, phone);
			pstm.setString(7, phone1);
			pstm.setString(8, phone2);
			pstm.setString(9, agency1);
			pstm.setString(10, agency2);
			pstm.setString(11, agency3);
			pstm.setString(12, agency4);
			pstm.setString(13, email);
			
			pstm.executeUpdate();
			%>
	<%@ include file ="../view/login.jsp" %>
			<%
		}catch(SQLException e){
			out.print("회원가입 실패");
			out.print(e);
		}catch(Exception e){
			out.print("회원가입 실패");
			out.print(e);
		}finally{
			if(pstm !=null){
				pstm.close();
			}
			if(conn != null){
				conn.close();
			}
		}
	%>
</body>
</html>