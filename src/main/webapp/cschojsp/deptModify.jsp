<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String deptno = request.getParameter("deptno");

String url = "jdbc:mysql://localhost:3306/cschodb";
String username = "cscho";
String pass = "1234";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(url, username, pass);
Statement stmt = conn.createStatement();
String sql = "select dname,loc from dept where deptno = "+deptno;
ResultSet rs = stmt.executeQuery(sql);
rs.next();
String dname = rs.getString("dname");
String loc = rs.getString("loc");
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
	padding: 5px;
}
</style>
<body>
	<form name="frm" method="post" action="deptModifySave.jsp">
		<table>
			<tr>
				<th>부서번호</th>
				<td><input type="text" name="deptno" value="<%=deptno%>" readonly /></td>
			</tr>
			<tr>
				<th>부서명</th>
				<td><input type="text" name="dname" value="<%=dname%>" /></td>
			</tr>
			<tr>
				<th>부서위치</th>
				<td><input type="text" name="loc" value="<%=loc%>" /></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" /></th>
			</tr>
		</table>
	</form>
</body>
</html>