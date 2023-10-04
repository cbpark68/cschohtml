<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String unq = request.getParameter("unq");
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

String sql2 = "select gid,thread from reboard where unq = "+unq; 
ResultSet rs2 = stmt.executeQuery(sql2);
rs2.next(); int pgid = rs2.getInt("gid");
String pthread = rs2.getString("thread");

String sql3 = "select ifnull(max(thread),'0') mthread from reboard ";
sql3 += " where gid = "+pgid+" and thread like '"+pthread+"_'";
ResultSet rs3 = stmt.executeQuery(sql3);
rs3.next();
String mthread = rs3.getString("mthread");
String mythread = "";
if(mthread.equals("0")){
	mythread = pthread + "a";
}else{
	char c1 = mthread.charAt(mthread.length()-1);
	c1++;
	String s2 = mthread.substring(0,mthread.length()-1);
	mythread = s2+c1;
}

String sql = "insert into reboard (title,pass,name,content,rdate,gid,thread) values ";
sql += " ('" + title + "','" + pass2 + "','" + name + "','" + content + "',now(),'"+pgid+"','"+mythread+"')";
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