package cscho.java.dbconn;

import java.sql.SQLException;
import java.sql.Statement;

public class UpdateDept {

	public static void main(String[] args) {
		DbConn.dbConnect();
		Statement stmt = DbConn.stmt;
		try {
			String sql = "update dept set loc='경기' where deptno=60";
			int rslt = stmt.executeUpdate(sql);
			if (rslt > 0)
				System.out.println("부서변경성공");
			else
				System.out.println("부서변경실패");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				DbConn.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
