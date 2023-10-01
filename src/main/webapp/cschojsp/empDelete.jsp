<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String empno = request.getParameter("empno");
if (empno == null || empno.equals("")) {
%><script>
		alert("잘못된 접근입니다");
		location = "empList.jsp";
	</script>
<%
}
String sql = "delete from emp where empno = " + empno;
int cnt = stmt.executeUpdate(sql);
if (cnt > 0) {
%><script>
		alert("삭제완료");
		location = "empList.jsp";
	</script>
<%
} else {
%><script>
		alert("삭제실패");
		location = "empList.jsp";
	</script>
<%
}
%>