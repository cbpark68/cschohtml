<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp" %>
<%
String sql = "";
sql += "select ";
sql += "f.req_member_no req_no,";
sql += "f.res_member_no res_no,";
sql += "f.req_date date, ";
sql += "m.member_id id, ";
sql += "m.member_name name ";
sql += "from friend_tbl f,member_tbl m ";
sql += "where f.req_member_no = m.member_no ";
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
			<h2 align="center">친구요청목록</h2>
			<div>
			<table border="1" align="center" width="300">
			<tr>
			<th>회원ID</th>
			<th>회원명</th>
			<th>요청일</th>
			</tr>	
			<%
			int cnt = 0;
			while(rs.next()){
				cnt++;
				String id = rs.getString("id");
				String name = rs.getString("name");
				String date = rs.getString("date");
				%>
				<tr>
				<td><%=id%></td>
				<td><%=name%></td>
				<td><%=date%></td>
				</tr>
				<%
			}
			%>	
			</table>
			<table width="300px" align="center">
			<tr>
				<td>친구 : <%=cnt%>	명</td>
			</tr>	
			</table>
			</div>
		</section>
		<footer> HRDKoreaCorp Copyright@2023 </footer>
	</div>
</body>
</html>