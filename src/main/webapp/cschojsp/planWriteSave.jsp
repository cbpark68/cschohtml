<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String sessionid = (String) session.getAttribute("SessionUserId");
if (sessionid == null) {
%><script>
	alert("로그인화면으로 이동합니다");
	location = "loginWrite.jsp";
</script>
<%
return;
}
String pdate = request.getParameter("pdate");
String title = request.getParameter("title");
String content = request.getParameter("content");

String sql = "insert into plan (userid,pdate,title,content) values ('" + sessionid + "','" + pdate + "','" + title
		+ "','" + content + "') ";
int rs = stmt.executeUpdate(sql);
%>
<script>
	alert("저장완료");
	self.close();
	opener.location="planList.jsp";
</script>