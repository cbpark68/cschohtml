<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String sqlTot = "select count(*) cnt from nboard";
ResultSet rs2 = stmt.executeQuery(sqlTot);
rs2.next();
int tot = rs2.getInt("cnt");
int rowno = tot;
String sql = "select unq,title,name,date_format(rdate,'%Y-%m-%d') rdate,hits from nboard order by unq desc";
ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<link rel="stylesheet" href="css/boardMain.css" />
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
				<table>
					<caption>
						<div>게시판목록</div>
						<div
							style="font-size: 12px; text-align: left; width: 50%; float: left">
							전체:<%=tot%>개
						</div>
						<div style="width: 50%; text-align: right; float: right;">
							<button type="button" onclick="location='boardWrite.jsp';">등록</button>
						</div>
					</caption>
					<colgroup>
						<col width="10%" />
						<col width="50%" />
						<col width="15%" />
						<col width="15%" />
						<col width="10%" />
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>이름</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<%
						while (rs.next()) {
							int unq = rs.getInt("unq");
							String title = rs.getString("title");
							String name = rs.getString("name");
							String rdate = rs.getString("rdate");
							int hits = rs.getInt("hits");
						%>
						<tr align="center">
							<td><%=rowno%></td>
							<td><a href="boardDetail.jsp?unq=<%=unq%>"><%=title%></a></td>
							<td><%=name%></td>
							<td><%=rdate%></td>
							<td><%=hits%></td>
						</tr>
						<%
						rowno--;
						}
						%>
					</tbody>
				</table>
			</article>
		</section>
		<footer><%@include file="boardFooter.jsp"%></footer>
	</div>
</body>
</html>