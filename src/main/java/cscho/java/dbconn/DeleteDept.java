package cscho.java.dbconn;

import java.sql.SQLException;
import java.sql.Statement;

public class DeleteDept {

	public static void main(String[] args) {
		DbConn.dbConnect();
		Statement stmt = DbConn.stmt;
		try {
			String sql = "delete from dept where deptno=70";
			int rslt = stmt.executeUpdate(sql);
			if(rslt > 0)
				System.out.println("부서삭제성공");
			else
				System.out.println("부서삭제실패");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
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
