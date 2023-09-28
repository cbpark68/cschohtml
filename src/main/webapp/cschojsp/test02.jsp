<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
	font-size:12px;
}
table{
	border-collapse:collapse;
}
td,th{
	border:1px solid #cccccc;
	width:30px;
	text-align:center;
}
</style>
<body>
<table>
<tr>
<%
for(int i=1;i<=10;i++){
	out.print("<td>"+i+"</td>");
}
%>
</tr>
<tr>
<%
for(int i=1;i<=10;i++){
%>
	<td><%=i%></td>
<%
}
%>
</tr>
</table>
<p/>
<table>
<tr>
<%
int count = 0;
for(int i=1;i<=31;i++){
	count++;
	out.print("<td>"+i+"</td>");
	if(count==7){
		out.print("</tr><tr>");
		count=0;
	}
}
while(count < 7){
	count++;
	out.print("<td></td>");
}
%>
</tr>
</table>
<p/>
<select name="year">
<%
	String sel = "";
	for(int i=1940;i<2023;i++){	
		if(i==2002){
			sel="selected";
		}else{
			sel="";
		}
%>
	<option value="<%=i%>" <%=sel%>><%=i%>년</option>
<%
	}
%>
</select>
</body>
</html>