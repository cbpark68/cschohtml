<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<caption>caption영역</caption>
					<colgroup>
						<col width="20%" />
						<col width="50%" />
						<col width="30%" />
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>요금</td>
							<td>2023-10-01</td>
						</tr>
						<tr>
							<td>1</td>
							<td>요금</td>
							<td>2023-10-01</td>
						</tr>
						<tr>
							<td>1</td>
							<td>요금</td>
							<td>2023-10-01</td>
						</tr>
					</tbody>
				</table>
			</article>
		</section>
		<footer><%@include file="boardFooter.jsp"%></footer>
	</div>
</body>
</html>