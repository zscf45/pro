package com.music;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	public int duplecateID(String id) {
		
		int cnt =0;
		
	try {
		Connection conn = DBOpen.getConnection();
		StringBuilder sql = new StringBuilder();
		
		sql.append("SELECT COUNT(ID) AS ID FROM DTB_TBL WHERE ID=?");
		
		PreparedStatement pstm = conn.prepareStatement(sql.toString());
		pstm.setString(1, id);
		
		ResultSet rs = pstm.executeQuery();
		if(rs.next()) {
			cnt = rs.getInt("id");
		}
		
		
	}catch(Exception e) {
		System.out.println("Id 중복" + e);
		
	}
	return cnt;
	
	}
	
  }

