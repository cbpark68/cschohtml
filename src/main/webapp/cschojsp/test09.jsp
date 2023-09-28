<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Calendar cal = Calendar.getInstance();
int year = cal.get(Calendar.YEAR) - 20;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm" method="post" action="test10.jsp">
이름 : <input type="text" name="username"/><br/>
생일 : 
<select name="year">
<%
String sel = "";
for(int i=1940;i<=2023;i++){
	if(i==year) sel = "selected";
	out.println("<option value=\""+i+"\" "+sel+" >"+i+"년</option>");
}
%>
</select><br/>
학습과목 :
<input type="checkbox" name="subject" value="java"/>java 
<input type="checkbox" name="subject" value="mysql"/>mysql 
<input type="checkbox" name="subject" value="html"/>html 
<br/>
성별 :
<input type="radio" name="gender" value="M"/>남 
<input type="radio" name="gender" value="F"/>여 
<br/>
연락처 : <input type="text" name="phone"/><br/>
주소 : <input type="text" name="addr"/><br/>
비고 : <br/>
<textarea name="content">내용을 넣으세요</textarea>
<br/>
<button type="submit">전송</button>
</form>
</body>
</html>