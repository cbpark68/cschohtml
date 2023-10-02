<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String sql = "select member_no no,";
sql += "member_id id,";
sql += "member_name name,";
sql += "ifnull(member_hobby,'') hobby,";
sql += "if(member_grade='S','특별',if(member_grade='A','우수','일반')) grade,";
sql += "date_format(member_date,'%Y.%m.%d') date ";
sql += " from member_tbl order by member_no desc";
ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>친구관리</title>
</head>
<link rel="stylesheet" href="css/memberMain.css" />
<body>
	<div>
		<header>
			<h1>친구관리</h1>
		</header>
		<nav>
			<%@ include file="memberTopMenu.jsp"%>
		</nav>
		<section>
			<br />
			<h2 align="center">친구조회/수정</h2>
			<div>
				<table align="center" border="1" width="600px">
					<tr>
						<th>회원번호</th>
						<th>회원ID</th>
						<th>이름</th>
						<th>등급</th>
						<th>취미</th>
						<th>등록일</th>
					</tr>
					<%
					while (rs.next()) {
						int no = rs.getInt("no");
						String id = rs.getString("id");
						String name = rs.getString("name");
						String grade = rs.getString("grade");
						String hobby = rs.getString("hobby");
						String date = rs.getString("date");
					%>
					<tr align="center">
						<td><%=no%></td>
						<td><a href="memberModify.jsp?no=<%=no%>"><%=id%></a></td>
						<td><%=name%></td>
						<td><%=grade%></td>
						<td><%=hobby%></td>
						<td><%=date%></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
		</section>
		<footer> HRDKoreaCorp Copyright@2023 </footer>
	</div>
</body>
</html>