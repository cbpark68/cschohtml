package cscho.java.dbconn;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class InsertEmp {

	public static void main(String[] args) {
		DbConn.dbConnect();
		Statement stmt = DbConn.stmt;
		try {
			Scanner scr = new Scanner(System.in);
			System.out.print("사원번호:");
			String empno = scr.next();
			System.out.print("사원이름:");
			String ename = scr.next();
			System.out.print("급여:");
			String sal = scr.next();
			System.out.print("입사일자:");
			String hiredate = scr.next();
			System.out.print("부서:");
			String deptno = scr.next();
			String sql = "insert into emp values (" + empno + ",'" + ename + "'," + sal + ",'" + hiredate + "',"
					+ deptno + ")";
			int rs = stmt.executeUpdate(sql);
			if (rs > 0)
				System.out.println("등록성공");
			else
				System.out.println("등록실패");
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
