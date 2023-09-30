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

String str3 = "update emp set ename = '" + ename + "', sal = '" + sal + "', job = '" + job + "', hiredate = '"
		+ hiredate + "', deptno = '" + deptno + "' where empno = " + empno;
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