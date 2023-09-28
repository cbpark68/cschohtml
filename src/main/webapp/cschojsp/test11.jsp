<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String username=request.getParameter("username");
String phone=request.getParameter("phone");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(username != null && phone != null && !username.equals("") && !phone.equals("") ){
	out.print(username+"의 전화번호는 "+phone+"입니다.<br/>");
}
%>
<form name="frm" method="post" action="<%=request.getRequestURI()%>">
이름 : <input type="text" name="username"/><br/>
연락처 : <input type="text" name="phone"/><br/>
<button type="submit">전송</button>
</form>
</body>
</html>