<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%out.print("jsp 시작하기<br/>"); %>
<%="게시판만들기<br/>" %>
<%="mysql 연동하기<br/>" %>
<hr/>
<%
String a1="java";
int year=2023;
out.print(a1+"<br/>");
%>
<%=a1+"<br/>"%>
<%=a1%>
<br/>
<%=year%>
<br/>
<hr/>
<%
for(int i=1;i<=10;i++){
	out.print(i+" ");
}
%>
<br/>
<% for(int i=1;i<=10;i++){%>
		<%=i+" " %>
<%} %>
</body>
</html>