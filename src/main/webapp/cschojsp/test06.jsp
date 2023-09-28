<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for(int i=1;i<=10;i++){
	out.print("<a href=\"test7.jsp?page="+i+"\">"+i+"</a>&nbsp;");
}
%>
<br/>
<a href="test8.jsp?id=test1&pass=1234&name=박철범">등록</a>
</body>
</html>