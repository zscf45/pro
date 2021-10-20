package music;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginCheck {

	public boolean LoginCheck(String id, String pwd) {
		boolean check = false;
		
		try {
				Connection con = null;
				PreparedStatement pstm = null;
				ResultSet rs = null;
				
				String DriverName = "Oracle.jdbc.driver.OracleDriver";
				String url = "jdbc:oracle:thin:@localhost:1521:XE";
				String user = "user";
				String pw = "pass";
				
				Class.forName(DriverName);
				
				con = DriverManager.getConnection(url, user, pw);
				System.out.println("로그인 성공");
				
				String sql = "select * from tbl_user where id = ? and pw = ?";
				pstm = con.prepareStatement(sql);
				pstm.setString(1,id);
				pstm.setString(2,pwd);
				rs = pstm.executeQuery();
				check = rs.next();
						
			} catch(Exception e) {
				System.out.println(e.getMessage());
			}
		return check;
		
	}
}
