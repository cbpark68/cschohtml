<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String title = request.getParameter("title");
String pass2 = request.getParameter("pass");
String name = request.getParameter("name");
String content = request.getParameter("content");

String sql = "";
sql += "insert into nboard (title,pass,name,content) ";
sql += "values ('"+title+"','"+pass+"','"+name+"','"+content+"')";
%>