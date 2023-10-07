<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
%>