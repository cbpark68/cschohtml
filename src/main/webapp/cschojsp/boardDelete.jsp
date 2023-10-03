<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String unq = request.getParameter("unq");
String pass2 = request.getParameter("pass");

if (unq == null || pass2 == null || unq.equals("") || pass2.equals("")) {
%><script>
		alert("경로오류");
		location = "boardList.jsp";
	</script>
<%
return;
}
String sql2 = "select count(*) cnt from nboard where unq = " + unq + " and pass = '" + pass2 + "'";
ResultSet rs2 = stmt.executeQuery(sql2);
rs2.next();
int cnt = rs2.getInt("cnt");
if (cnt == 0) {
%><script>
	alert("비번오류");
	history.back();
</script>
<%
return;
}

String sql = "delete from nboard where unq = "+unq;
int rs = stmt.executeUpdate(sql);

if (rs > 0){
%><script>
		alert("삭제완료");
		location="boardList.jsp";
	</script>
<%
}else{
%><script>
		alert("삭제오류");
		location="boardList.jsp";
	</script>
<%
}
%>