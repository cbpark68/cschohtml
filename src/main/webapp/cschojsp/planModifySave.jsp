<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%@ include file="include/certificate.jsp"%>
<%
String pdate = request.getParameter("pdate");
String title = request.getParameter("title");
String content = request.getParameter("content");

String sql = "update plan set ";
sql += " title='"+title+"',content='"+content+"' ";
sql += " where userid = '"+sessionid+"' and pdate='"+pdate+"'";
int rs = stmt.executeUpdate(sql);
%>
<script>
	alert("저장완료");
	self.close();
	opener.location="planList.jsp";
</script>