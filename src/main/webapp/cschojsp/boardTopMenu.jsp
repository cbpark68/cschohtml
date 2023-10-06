<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<li class="menulink"><a href="boardMain.jsp">홈</a></li>
	<li class="menulink"><a href="boardList.jsp">계시판</a></li>
	<li class="menulink"><a href="reBoardList.jsp">답변게시판</a></li>
	<%
	String SESSIONID = (String) session.getAttribute("SessionUserId");
	if (SESSIONID == null) {
	%>
	<li class="menulink"><a href="member2Write.jsp">회원가입</a></li>
	<li class="menulink"><a href="loginWrite.jsp">로그인</a></li>
	<%
	} else {
	%>
	<li class="menulink"><a href="member2Modify.jsp">정보수정</a></li>
	<li class="menulink"><a href="logout.jsp">로그아웃</a></li>
	<%}%>
	<li class="menulink"><a href="#">일정관리</a></li>
	<li class="menulink"><a href="#">대화방</a></li>
</body>
</html>