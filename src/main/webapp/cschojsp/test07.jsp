<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String pg = request.getParameter("page");
int pgno = Integer.parseInt(pg);
int startno = (pgno-1)*10+1;
int lastno = startno+9;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
현재페이지 : <%=pg %><br/>
시작번호 : <%=startno %><br/>
마지막번호 : <%=lastno %><br/>
</body>
</html>