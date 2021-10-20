package com.music;

import java.sql.*;


public class DBOpen {
	public static Connection getConnection() {
	
			Connection conn = null;

			String url ="jdbc:oracle:thin:@localhost:1521:XE";
			String user = "hr";
			String pass = "hr";
			String driver ="oracle.jdbc.driver.OracleDriver";
			
			try {
				Class.forName(driver);
				conn= DriverManager.getConnection(url,user,pass);
			}catch(Exception e) {
				System.out.println(e);
			}
		return conn;
	}

}
