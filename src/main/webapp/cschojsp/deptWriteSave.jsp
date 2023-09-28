<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String deptno = request.getParameter("deptno");
String dname = request.getParameter("dname");
String loc = request.getParameter("loc");

String url = "jdbc:mysql://localhost:3306/cschodb";
String username = "cscho";
String pass = "1234";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(url, username, pass);
Statement stmt = conn.createStatement();
String sql = "insert into dept (deptno,dname,loc) values ('"+deptno+"','"+dname+"','"+loc+"')";
int rs = stmt.executeUpdate(sql);
if(rs == 1){
	%><script>alert("저장성공");location="deptList.jsp";</script><%
}else{
	%><script>alert("저장실패");history.back();</script><%
}
%>