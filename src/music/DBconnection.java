package music;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
    public static Connection connect() {
        Connection conn = null;

        try {
            String user = "user";
            String password = "password";
            String url = "jdbc:oracle:thin:@localhost:1521:xe";

            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            System.out.println(e);
        }

        return conn;
    }
}