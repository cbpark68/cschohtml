<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp" %>
<%
String unq = request.getParameter("unq");
String sql2 = "update nboard set hits = hits + 1 where unq = "+unq;
stmt.executeUpdate(sql2);

String sql = "select title,name,rdate,content from nboard where unq = "+unq;
ResultSet rs = stmt.executeQuery(sql);
String title = "";
String name = "";
String rdate = "";
String content = "";
if(rs.next()){
	title = rs.getString("title");
	name = rs.getString("name");
	rdate = rs.getString("rdate");
	content = rs.getString("content");
	content = content.replace("\n","<br/>");
	content = content.replace(" ","&nbsp;");
}else{
	%><script>alert("오류발생");location="boardMain.jsp";</script><%
	return;
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<link rel="stylesheet" href="css/boardMain.css" />
<style>
.box_title{
	width:90%;
}
.box_name{
	width:150px;
}
</style>
<body>
	<div class="wrap">
		<header>
			<div class="top_logo"></div>
			<div class="top_header"></div>
		</header>
		<nav>
			<ul>
				<%@include file="boardTopMenu.jsp"%>
			</ul>
		</nav>
		<aside><%@include file="boardLeftMenu.jsp"%></aside>
		<section>
			<article>
			<form name="frm" method="post" action="boardWriteSave.jsp">
				<table>
					<caption>게시판조회화면</caption>
					<colgroup>
						<col width="25%" />
						<col width="*" />
					</colgroup>
					<tbody>
						<tr>
							<th>제목</th>
							<td><%=title%></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><%=name%></td>
						</tr>
						<tr>
							<th>날짜</th>
							<td><%=rdate%></td>
						</tr>
						<tr>
							<th>내용</th>
							<td height="100" valign="top"><%=content%></td>
						</tr>
					</tbody>
				</table>
				<div style="width:600px;text-align:center;margin-top:10px;">
					<button type="button" onclick="location='boardWrite.jsp';">입력</button>	
					<button type="button" onclick="location='boardList.jsp';">목록</button>	
					<button type="button" onclick="location='boardModify.jsp?unq=<%=unq%>';">수정</button>	
					<button type="button" onclick="location='boardPassWrite.jsp?unq=<%=unq%>';">삭제</button>	
				</div>
				</form>
			</article>
		</section>
		<footer><%@include file="boardFooter.jsp"%></footer>
	</div>
</body>
</html>