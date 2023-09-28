package cscho.java.dbconn;

import java.sql.SQLException;
import java.sql.Statement;

public class InsertDept {

	public static void main(String[] args) {
		DbConn.dbConnect();
		Statement stmt = DbConn.stmt;
		try {
			String sql = "insert into dept values (90,'비서실3','경기도 광명')";
			int rslt = stmt.executeUpdate(sql);
			if(rslt > 0)
				System.out.println("부서등록성공");
			else
				System.out.println("부서등록실패");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
