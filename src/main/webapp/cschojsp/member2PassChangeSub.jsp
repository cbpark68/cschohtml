<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String sessionid = (String) session.getAttribute("SessionUserId");
if (sessionid == null) {
%><script>
	alert("로그인필요");
	self.close();
</script>
<%
return;
}
String pass1 = request.getParameter("pass1");
String pass2 = request.getParameter("pass2");
String pass3 = request.getParameter("pass3");

if (pass1 == null || pass2 == null || pass3 == null) {
%><script>
	alert("비번누락");
	history.back();
</script>
<%
return;
}

String sql = "select count(*) cnt from memberinfo where userid = '" + sessionid + "' and pass = '" + pass1 + "'";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int cnt = rs.getInt("cnt");
if (cnt == 0) {
%><script>
	alert("현재비번불일치");
	history.back();
</script>
<%
return;
}
if (!pass2.equals(pass3)) {
%><script>
	alert("신규비번불일치");
	history.back();
</script>
<%
return;
}

String sql2 = "update memberinfo set pass = '" + pass2 + "' where userid='" + sessionid + "'";
int rs2 = stmt.executeUpdate(sql2);
if (rs2 > 0) {
%><script>
	alert("비번변경완료");
	self.close();
</script>
<%
return;
}
%>