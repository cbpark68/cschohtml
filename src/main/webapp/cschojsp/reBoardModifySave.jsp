<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String unq = request.getParameter("unq");
String title = request.getParameter("title");
String pass2 = request.getParameter("pass");
String name = request.getParameter("name");
String content = request.getParameter("content");
if (unq == null || unq.equals("")) {
%><script>
	alert("접근오류");
	location = "reBoardMain.jsp";
</script>
<%
return;
}

if (title == null)
title = "";
if (pass2 == null)
pass2 = "";
title = title.trim();
pass2 = pass2.trim();
name = name.trim();
content = content.trim();

if (content.length() > 500) {
%><script>
	alert("내용길이초과오류");
	history.back();
</script>
<%
return;
}

if (title == null || pass2 == null || title.equals("") || pass.equals("")) {
%><script>
	alert("오류발생");
	history.back();
</script>
<%
return;
}
String sql2 = "select count(*) cnt from reboard where unq = " + unq + " and pass = '" + pass2 + "'";
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

String sql = "update reboard set ";
sql += " title			= '" + title + "', ";
sql += " name			= '" + name + "', ";
sql += " content		= '" + content + "', ";
sql += " rdate = now() ";
sql += " where unq = " + unq;

int rs = stmt.executeUpdate(sql);
if (rs > 0) {
%><script>
	alert("변경완료");
	location = "reBoardList.jsp";
</script>
<%
} else {
%><script>
	alert("변경오류");
	history.back();
</script>
<%
}
%>