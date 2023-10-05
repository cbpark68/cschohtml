<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String userid = request.getParameter("userid");
if (userid == null) {
%><script>
		alert("접근오류");
		self.close();
	</script>
<%
return;
}
userid = userid.trim();
if (userid.length() < 4 || userid.length() > 12) {
%>
<script>
	alert("아이디길이오류");
	self.close();
</script>
<%
return;
}
String sql = "select count(*) cnt from memberinfo where userid='"+userid+"'";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int cnt = rs.getInt("cnt");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.div1{
	font-size:14px;
	font-weight:bold;
	width:100%;
	height:185px;
	background-color:yellow;
	text-align:center;
	vertical-align:middle;
	line-height:1.6;
}
</style>
<body>
<div class="div1">
<br/><br/><br/>
<%
if(cnt == 0){
	out.print("사용가능한 아이디입니다");
	%><script>opener.document.frm.chk.value = "checked";</script><%
}else{
	out.print("사용할수 없는 아이디입니다");
	%><script>opener.document.frm.chk.value = "unchecked";</script><%
}
%>
<br/><br/>
<button type="button" onclick="self.close();">닫기</button>
</div>
</body>
</html>