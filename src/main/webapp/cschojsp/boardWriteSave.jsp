<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String title = request.getParameter("title");
String pass2 = request.getParameter("pass");
String name = request.getParameter("name");
String content = request.getParameter("content");

if(title==null) title="";
if(pass2==null) pass2="";
title = title.trim();
pass2 = pass2.trim();
name = name.trim();
content = content.trim();

if(content.length() > 500){
%><script>
		alert("내용길이초과오류");
		history.back();
	</script>
<%
return;
}

if (title == null || pass2 == null || title.equals("") || pass.equals("")) {
%><script>
		alert("오류발생");
		history.back();
	</script>
<%
return;
}

String sql = "";
sql += "insert into nboard (title,pass,name,content,rdate) ";
sql += "values ('" + title + "','" + pass2 + "','" + name + "','" + content + "',now())";
int rs = stmt.executeUpdate(sql);
if (rs > 0){
%><script>
		alert("저장완료");
		location="boardList.jsp";
	</script>
<%
}else{
%><script>
		alert("저장오류");
		history.back();
	</script>
<%
}

%>