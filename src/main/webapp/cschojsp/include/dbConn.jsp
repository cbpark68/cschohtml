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
request.setCharacterEncoding("utf-8");
%>