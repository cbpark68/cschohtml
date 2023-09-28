package cscho.java.dbconn;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class DeleteEmp {

	public static void main(String[] args) {
		DbConn.dbConnect();
		Statement stmt = DbConn.stmt;
		try {
			Scanner scr = new Scanner(System.in);
			System.out.print("삭제하려는 사원번호는?");
			String no = scr.next();
			String sql = "delete from emp where empno='" + no + "'";
			int rslt = stmt.executeUpdate(sql);
			if (rslt > 0)
				System.out.println("삭제성공");
			else
				System.out.println("삭제실패");
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
