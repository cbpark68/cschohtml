package cscho.java.dbconn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SelectDept {

	public static void main(String[] args) {
		DbConn.dbConnect();
		Statement stmt = DbConn.stmt;
		String sql = "select deptno,dname,loc from dept";
		ResultSet rs = null;

		try {
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int deptno = rs.getInt("deptno");
				String dname = rs.getString("dname");
				String loc = rs.getString("loc");
				System.out.println(deptno + "/" + dname + "/" + loc);
			}
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
