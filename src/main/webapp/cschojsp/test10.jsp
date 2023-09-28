<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String username=request.getParameter("username");
String addr=request.getParameter("addr");
String phone=request.getParameter("phone");
String birthday=request.getParameter("year");
String content=request.getParameter("content");
String gender=request.getParameter("gender");
if(gender == null) gender = "";
String[] subject=request.getParameterValues("subject");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <%=username %><br/>
생일 : <%=birthday %><br/>
연락처 : <%=phone %><br/>
성별 : <%=gender %><br/>
주소 : <%=addr %><br/>
비고 : <%=content %><br/>
과목 : 
<%
if(subject != null){
	for(int i=0;i<subject.length;i++){
		out.println(subject[i]+" ");
	}
}else{
	out.print("선택과목이 없습니다.<br/>");
}
%>
<br/>
IP : <%=request.getRemoteAddr() %><br/>
데이터길이 : <%=request.getContentLength() %><br/>
Encoding : <%=request.getCharacterEncoding() %><br/>
컨텐트타입 : <%=request.getContentType() %><br/>
프로토콜 : <%=request.getProtocol() %><br/>
전송방식 : <%=request.getMethod() %><br/>
URL : <%=request.getRequestURL() %><br/>
컨텍스트경로 : <%=request.getContextPath() %><br/>
서버이름 : <%=request.getServerName() %><br/>
서버포트 : <%=request.getServerPort() %><br/>
</body>
</html>