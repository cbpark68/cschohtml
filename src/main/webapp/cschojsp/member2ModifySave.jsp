<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String sessionid = (String)session.getAttribute("SessionUserId");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String mobile = request.getParameter("mobile");
String birthday = request.getParameter("birthday");
String zipcode = request.getParameter("zipcode");
String addr = request.getParameter("addr");

if (sessionid == null)
	sessionid = "";
sessionid = sessionid.trim();
name = name.trim();

if (sessionid == null || sessionid.equals("")){ 
%><script>
	alert("오류발생");
	history.back();
</script>
<%
return;
}

String sql = "update memberinfo set ";
sql += "name='"+name+"',";
sql += "gender='"+gender+"',";
sql += "birthday='"+birthday+"',";
sql += "mobile='"+mobile+"',";
sql += "zipcode='"+zipcode+"',";
sql += "addr='"+addr+"' ";
sql += "where userid='"+sessionid+"'";
int rs = stmt.executeUpdate(sql);
if (rs > 0) {
%><script>
	alert("저장완료");
	location = "boardMain.jsp";
</script>
<%
} else {
%><script>
	alert("저장오류");
	history.back();
</script>
<%
}
%>