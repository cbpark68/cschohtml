<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String eng=request.getParameter("eng");
String kor=request.getParameter("kor");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
영어점수 : <%=eng %> <br/>
국어점수 : <%=kor %> <br/>
</body>
</html>