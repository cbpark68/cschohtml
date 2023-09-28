package cscho.java.dbconn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SelectEmp {

	public static void main(String[] args) {
		DbConn.dbConnect();
		Statement stmt = DbConn.stmt;
		try {
			String sql = "select empno,ename,sal,hiredate,deptno from emp";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				int sal = rs.getInt("sal");
				String hiredate = rs.getString("hiredate");
				String deptno = rs.getString("deptno");
				System.out.println(empno + "/" + ename + "/" + sal + "/" + hiredate + "/" + deptno);
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
