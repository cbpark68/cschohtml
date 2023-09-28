<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String url = "jdbc:mysql://localhost:3306/cschodb";
String username = "cscho";
String pass = "1234";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(url, username, pass);
Statement stmt = conn.createStatement();
String sql = "select deptno,dname,loc from dept";
ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
	border-collapse: collapse;
}

th, td {
	border: 1px solid #cccccc;
	text-align: center;
}
</style>
<body>
	<button type="button" onclick="location='deptWrite.jsp'">부서등록</button>
	<table>
		<tr>
			<th>번호</th>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서위치</th>
		</tr>
		<%
		int count = 0;
		while (rs.next()) {
			count++;
			String no = rs.getString("deptno");
		%>
		<tr>
			<td><%=count%></td>
			<td>
			<a href="deptModify.jsp?deptno=<%=no%>"><%=no%></a>
			</td>
			<td><%=rs.getString("dname")%></td>
			<td><%=rs.getString("loc")%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
<%
stmt.close();
conn.close();
%>
</html>