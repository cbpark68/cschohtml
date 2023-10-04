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
String sql2 = "select ifnull(max(gid),0)+1 mygid from reboard";
ResultSet rs2 = stmt.executeQuery(sql2);
rs2.next();
int mygid = rs2.getInt("mygid");

String sql = "insert into reboard (title,pass,name,content,rdate,gid,thread) values ";
sql += " ('" + title + "','" + pass2 + "','" + name + "','" + content + "',now(),'"+mygid+"','a')";
int rs = stmt.executeUpdate(sql);
if (rs > 0){
%><script>
		alert("저장완료");
		location="reBoardList.jsp";
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