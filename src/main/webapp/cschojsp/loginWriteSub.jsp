<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String userid = request.getParameter("userid");
String pass2 = request.getParameter("pass");
if (userid == null || pass2 == null) {
%><script>
	alert("접근오류");
	location = "boardMain.jsp";
</script>
<%
return;
}
String sql = "select count(*) cnt from memberinfo where userid='" + userid + "' and pass='" + pass2 + "'";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int cnt = rs.getInt("cnt");
if (cnt == 0) {
%><script>
	alert("로그인오류");
	history.back();
</script>
<%
return;
}
session.setAttribute("SessionUserId", userid);
%>
<script>alert("<%=userid%>님 로그인 되었습니다");
	location = "boardMain.jsp";
</script>