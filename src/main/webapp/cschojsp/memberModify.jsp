<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String no = request.getParameter("no");
if (no == null || no.equals("")) {
%><script>
	alert("오류발생");
	location = "memberIndex.jsp";
</script>
<%
return;
}

String sql = "select member_no no,member_id id,member_name name,member_grade grade,member_hobby hobby,member_date date from member_tbl where member_no = "+no;
ResultSet rs = stmt.executeQuery(sql);
String id = "";
String name = "";
String grade = "";
String hobby = "";
String date = "";
if (rs.next()) {
id = rs.getString("id");
name = rs.getString("name");
grade = rs.getString("grade");
hobby = rs.getString("hobby");
date = rs.getString("date");
} else {
%><script>
		alert("오류발생");
		location = "memberIndex.jsp";
	</script>
<%
return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>친구관리</title>
</head>
<script type="text/javascript">
	function fn_submit() {
		if (document.frm.no.value == "") {
			alert("회원번호를 입력하세요");
			document.frm.no.focus();
			return false;
		}
		if (document.frm.id.value == "") {
			alert("회원ID를 입력하세요");
			document.frm.id.focus();
			return false;
		}
		if (document.frm.name.value == "") {
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
			<h2 align="center">친구수정</h2>
			<div>
				<form name="frm" method="post" action="memberModifySave.jsp">
					<input type="hidden" name="no" value="<%=no%>" />
					<table border="1" width="600px" align="center">
						<tr>
							<th>회원번호</th>
							<td><%=no%></td>
						</tr>
						<tr>
							<th>회원ID</th>
							<td><input type="text" name="id" value="<%=id%>" /></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" name="name" value="<%=name%>" /></td>
						</tr>
						<tr>
							<th>등급</th>
							<td><select name="grade" size="3">
									<option value="S" <%if(grade.equals("S")) out.print("selected");%>>특별회원</option>
									<option value="A" <%if(grade.equals("A")) out.print("selected");%>>우수회원</option>
									<option value="B" <%if(grade.equals("B")) out.print("selected");%>>일반회원</option>
							</select></td>
						</tr>
						<tr>
							<th>취미</th>
							<td><input type="checkbox" name="hobby" value="독서" <%if(hobby.indexOf("독서")>=0) out.print("checked"); %>/>독서 <input
								type="checkbox" name="hobby" value="운동" <%if(hobby.indexOf("운동")>=0) out.print("checked"); %>/>운동 <input
								type="checkbox" name="hobby" value="영화" <%if(hobby.indexOf("영화")>=0) out.print("checked"); %>/>영화</td>
						</tr>
						<tr>
							<th>등록일자</th>
							<td><input type="text" name="date" value="<%=date%>" /></td>
						</tr>
					</table>
					<div style="width: 100%; text-align: center;">
						<button type="submit" onclick="fn_submit();return false;">수정</button>
						<button type="button" onclick="location='memberList.jsp';">조회</button>
					</div>
				</form>
			</div>
		</section>
		<footer> HRDKoreaCorp Copyright@2023 </footer>
	</div>
</body>
</html>