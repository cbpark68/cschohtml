<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/dbConn.jsp"%>
<%
String sessionid = (String) session.getAttribute("SessionUserId");
if (sessionid == null) {
%><script>
	alert("접근오류");
	location = "boardMain.jsp";
</script>
<%
return;
}
String sql = "select count(*) cnt from memberinfo where userid='" + sessionid + "'";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int cnt = rs.getInt("cnt");
if (cnt != 1) {
%><script>
	alert("시스템오류");
	location = "boardMain.jsp";
</script>
<%
return;
}

String sql2 = "select name,birthday,mobile,gender,zipcode,addr,rdate from memberinfo ";
sql2 += " where userid = '" + sessionid + "'";
ResultSet rs2 = stmt.executeQuery(sql2);
String name = "";
String birthday = "";
String mobile = "";
String gender = "";
String zipcode = "";
String addr = "";
String rdate = "";
if (rs2.next()) {
name = rs2.getString("name");
birthday = rs2.getString("birthday");
mobile = rs2.getString("mobile");
gender = rs2.getString("gender");
zipcode = rs2.getString("zipcode");
addr = rs2.getString("addr");
rdate = rs2.getString("rdate");
} else {
%><script>
	alert("조회오류");
	location = "loginWrite.jsp";
</script>
<%
return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" type="text/css" href="css/empMain.css" />
<link rel="stylesheet" href="../css/jquery-ui.css">
<script src="../script/jquery-3.6.0.js"></script>
<script src="../script/jquery-ui.js"></script>
<script>
	$(function() {
		$("#birthday").datepicker({
			dateFormat : 'yy-mm-dd',
			changeMonth : true,
			changeYear : true
		});
	});
</script>
</head>
<link rel="stylesheet" href="css/boardMain.css" />
<style>
td {
	text-align: left;
	line-height: 1.6;
}

.box1 {
	width: 90%;
}

.box2 {
	width: 150px;
}
</style>
<script>
	function fn_submit() {
		var f = document.frm;

		if (f.name.value == "") {
			alert("이름을 입력해 주세요");
			f.name.focus();
			return false;
		}
		if (f.gender[0].checked == false && f.gender[1].checked == false) {
			alert("성별을 입력해 주세요");
			return false;

		}

		f.submit();
	}

	function fn_onload() {
		document.frm.name.focus();
	}

	function fn_post() {
		var w = window.screen.width / 2 - 150;
		var h = window.screen.height / 2 - 100;
		window.open("post1.jsp", "post", "width=500,height=200,left=" + w
				+ ",top=" + h);
	}

	function fn_passchange() {
		var w = window.screen.width / 2 - 150;
		var h = window.screen.height / 2 - 100;
		window.open("member2PassChange.jsp", "passchange",
				"width=300,height=200,left=" + w + ",top=" + h);
	}
</script>
<body onload="fn_onload()">
	<div class="wrap">
		<header>
			<div class="top_logo"></div>
			<div class="top_header"></div>
		</header>
		<nav>
			<ul>
				<%@include file="boardTopMenu.jsp"%>
			</ul>
		</nav>
		<aside><%@include file="boardLeftMenu.jsp"%></aside>
		<section>
			<article>
				<form name="frm" method="post" action="member2ModifySave.jsp">
					<input type="hidden" name="chk" value="unchecked" />
					<table>
						<caption>회원수정</caption>
						<colgroup>
							<col width="25%" />
							<col width="*" />
						</colgroup>
						<tbody>
							<tr>
								<th>아이디</th>
								<td><%=sessionid%></td>
							</tr>
							<tr>
								<th>비번</th>
								<td><button type="button" onclick="fn_passchange();">비번변경</button></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" name="name" class="box2" required
									value="<%=name%>" /></td>
							</tr>
							<tr>
								<th>성별</th>
								<td><input type="radio" name="gender" value="M"
									<%if (gender.equals("M")) {
	out.print("checked");
}%> />남성 <input
									type="radio" name="gender" value="F"
									<%if (gender.equals("F")) {
	out.print("checked");
}%> />여성</td>
							</tr>
							<tr>
								<th>생일</th>
								<td><input type="text" name="birthday" id="birthday"
									class="box2" value="<%=birthday%>" /></td>
							</tr>
							<tr>
								<th>핸드폰</th>
								<td><input type="text" name="mobile" class="box2"
									value="<%=mobile%>" /></td>
							</tr>
							<tr>
								<th>주소</th>
								<td><input type="text" name="zipcode" class="box2"
									value="<%=zipcode%>" />
									<button type="button" onclick="fn_post();">우편번호</button> <br />
									<input type="text" name="addr" class="box1" value="<%=addr%>" /></td>
							</tr>
						</tbody>
					</table>
					<div style="width: 600px; text-align: center; margin-top: 10px;">
						<button type="submit" onclick="fn_submit();return false;">저장</button>
						<button type="reset">취소</button>
					</div>
				</form>
			</article>
		</section>
		<footer><%@include file="boardFooter.jsp"%></footer>
	</div>
</body>
</html>