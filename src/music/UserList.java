package music;

public ArrayList<UserDBBean> UserList() {
    
    ArrayList<UserDBBean> UserList = new ArrayList<UserDBBean>();
    
    try {
        
            Connection con = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            String DriverName = "oracle.jdbc.driver.OracleDriver";
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String user = "dbuser";
            String pwd = "dbpass";
            
            Class.forName(DriverName);
            con = DriverManager.getConnection(url, user, pwd);
            System.out.println("리스트연결성공");
            String sql = "select * from tbl_user";
            
            pstmt = con.prepareStatement(sql);
            rs  = pstmt.executeQuery();
            System.out.println(rs);
            while(rs.next()) {
                
                UserDBBean User = new UserDBBean();
                
                User.setId(rs.getString("id"));
                User.setPw(rs.getString("pw"));
                User.setName(rs.getString("name"));
                User.setPhone(rs.getInt(4));
                
                UserList.add(User);
                
                
            }

    }catch(Exception e) {
        System.out.println(e.getMessage());
    }
    return UserList;
}