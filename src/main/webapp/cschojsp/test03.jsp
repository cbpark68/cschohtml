<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public int multi(int a,int b){
	int rtn = a*b;
	return rtn;
}
public int plus(int a,int b){
	int rtn = a+b;
	return rtn;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=multi(5,10) %>
<%=plus(5,10) %>
<hr/>
<%
Calendar cal = Calendar.getInstance();
int y = cal.get(Calendar.YEAR);
int m = cal.get(Calendar.MONTH)+1;
int d = cal.get(Calendar.DATE);
%>
<%=y %>년 <%=m %>월 <%=d %>일
<hr/>
<%
Random r = new Random();
for(int i=1;i<=20;i++){
	int n = r.nextInt(10)+1;
	out.print(i+":"+n+"<br/>");
	if(n==7)break;
}
%>
<br/>
<%
String addr = " 1234 경기도 광명시 ";
%>
문자열길이 : <%=addr.length() %><br/>
<%
addr = addr.trim();
%>
문자열길이 : <%=addr.length() %><br/>
<%
String[] arr = addr.split(" ");
%>
우편번호 : <%=arr[0]%>
<%
String addr2 = addr.replace(arr[0],"");
addr2 = addr2.trim();
%>
주소 : <%=addr2 %>
<br/>
<%
if(addr.indexOf("대구")<0){
	out.print("존재하지않음");
}else{
	out.print("존재함");
}
%>
<br/>
</body>
</html>