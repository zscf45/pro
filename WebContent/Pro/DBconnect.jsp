<%@ page import= "java.sql.*" %>
<% 
	Connection conn = null;

	String url ="jdbc:oracle:thin:@localhost:1521:XE";
	String user = "hr";
	String pass = "hr";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url,user,pass);

%>