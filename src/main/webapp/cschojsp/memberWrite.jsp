<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp" %>
<%
String sql = "select max(member_no)+1 myno from member_tbl ";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int myno = rs.getInt("myno");

Calendar cal = Calendar.getInstance();
String y = cal.get(Calendar.YEAR)+"";
String m = (cal.get(Calendar.MONTH)+1)+"";
String d = cal.get(Calendar.DATE)+"";
if(Integer.parseInt(m)<10){
	m = "0"+m;	
}
if(Integer.parseInt(d)<10){
	d = "0"+d;	
}
String date = y+"/"+m+"/"+d;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>친구관리</title>
</head>
<script type="text/javascript">
function fn_submit(){
	if(document.frm.no.value == ""){
		alert("회원번호를 입력하세요");
		document.frm.no.focus();
		return false;
	}
	if(document.frm.id.value == ""){
		alert("회원ID를 입력하세요");
		document.frm.id.focus();
		return false;
	}
	if(document.frm.name.value == ""){
		alert("회원이름을 입력하세요");
		document.frm.name.focus();
		return false;
	}
	
	document.frm.submit();
}
</script>
<link rel="stylesheet" href="css/memberMain.css" />
<body>
	<div>
		<header>
			<h1>친구관리</h1>
		</header>
		<nav>
			<%@ include file="memberTopMenu.jsp"%>
		</nav>
		<section>
			<br />
			<h2 align="center">친구등록</h2>
			<div>
				<form name="frm" method="post" action="memberWriteSave.jsp">
					<table border="1" width="600px" align="center">
						<tr>
							<th>회원번호</th>
							<td><input type="text" name="no" value="<%=myno%>" /></td>
						</tr>
						<tr>
							<th>회원ID</th>
							<td><input type="text" name="id" /></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" name="name" /></td>
						</tr>
						<tr>
							<th>등급</th>
							<td><select name="grade" size="3" >
									<option value="S">특별회원</option>
									<option value="A">우수회원</option>
									<option value="B">일반회원</option>
							</select></td>
						</tr>
						<tr>
							<th>취미</th>
							<td>
							<input type="checkbox" name="hobby" value="독서" />독서 
							<input type="checkbox" name="hobby" value="운동" />운동 
							<input type="checkbox" name="hobby" value="영화" />영화
							</td>
						</tr>
						<tr>
							<th>등록일자</th>
							<td><input type="text" name="date" value="<%=date%>" /></td>
						</tr>
					</table>
					<div style="width: 100%; text-align: center;">
						<button type="submit" onclick="fn_submit();return false;">등록</button>
						<button type="button">조회</button>
					</div>
				</form>
			</div>
		</section>
		<footer> HRDKoreaCorp Copyright@2023 </footer>
	</div>
</body>
</html>