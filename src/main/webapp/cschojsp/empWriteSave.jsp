<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String empno = request.getParameter("empno");
String ename = request.getParameter("ename");
String sal = request.getParameter("sal");
String job = request.getParameter("job");
String hiredate = request.getParameter("hiredate");
String deptno = request.getParameter("deptno");

if (empno == null || empno.equals("") || ename == null | ename.equals("")) {
%><script>
	alert("필수항목이 없습니다. 재시도해주세요");
	history.back();
</script>
<%
}
String sql = "select count(*) cnt from emp where empno = " + empno;
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int cnt = rs.getInt("cnt");

if (cnt > 0) {
%><script>
	alert("사용할수 없는 사원번호 입니다.");
	history.back();
</script>
<%
return;
}
String sql2 = "select count(*) cnt from dept where deptno = " + deptno;
ResultSet rs2 = stmt.executeQuery(sql2);
rs2.next();
int cnt2 = rs2.getInt("cnt");

if (cnt2 < 1) {
%><script>
	alert("사용할수 없는 부서번호 입니다.");
	history.back();
</script>
<%
return;
}
/* if (hiredate == null || !hiredate.equals("")) {
	String[] arr = hiredate.split("/");
	hiredate = arr[2] + "-" + arr[0] + "-" + arr[1];
}
 */String str3 = "insert into emp (empno,ename,sal,job,hiredate,deptno) values ('" + empno + "','" + ename + "','" + sal
		+ "','" + job + "','" + hiredate + "','" + deptno + "')";
int cnt3 = stmt.executeUpdate(str3);
if (cnt3 == 1) {
%><script>
	alert("저장완료");
	location = "empList.jsp";
</script>
<%
} else {
%><script>
	alert("저장실패");
	history.back();
</script>
<%
}
%>