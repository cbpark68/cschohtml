<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%@ include file="include/certificate.jsp"%>
<%
String pdate = request.getParameter("pdate");
if (pdate == null) {
%><script>
	alert("경로오류");
	self.close();
</script>
<%
return;
}
String sql = "select title,content from plan where userid='" + sessionid + "' and pdate='" + pdate + "'";
ResultSet rs = stmt.executeQuery(sql);
String title = "";
String content = "";
if (rs.next()) {
title = rs.getString("title");
content = rs.getString("content");
} else {
%><script>
	alert("경로오류");
	self.close();
</script>
<%
return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정관리</title>
<link rel="stylesheet" type="text/css" href="css/empMain.css" />
<link rel="stylesheet" href="../css/jquery-ui.css">
<script src="../script/jquery-3.6.0.js"></script>
<script src="../script/jquery-ui.js"></script>
<script>
	$(function() {
		$("#pdate").datepicker({
			dateFormat : 'yy-mm-dd',
			changeMonth : true,
			changeYear : true
		});
	});

	function fn_submit() {
		var f = document.frm;
		if (f.pdate.value == "") {
			alert("날짜를 입력하세요");
			f.pdate.focus();
			return false;
		}
		if (f.title.value == "") {
			alert("제목을 입력하세요");
			f.title.focus();
			return false;
		}
		f.submit();
	}
</script>
</head>
<style>
body {
	font-size: 12px;
}

table {
	width: 98%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid gray;
	padding: 5px;
}

caption {
	font-size: 14px;
	font-weight: bold;
}

.div1 {
	width: 90%;
	text-align: center;
	margin-top: 10px;
}
</style>
<body>
	<form name="frm" method="post" action="planModifySave.jsp">
		<input type="hidden" name="pdate" value="<%=pdate%>"/>
		<table>
			<caption>일정수정</caption>
			<colgroup>
				<col width="30%" />
				<col width="*" />
			</colgroup>
			<tr>
				<th>날짜</th>
				<td><%=pdate%></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="<%=title%>"
					style="width: 97%;" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td height="120" valign="top"><textarea name="content"
						style="width: 98%; height: 100px;"><%=content%></textarea></td>
			</tr>
		</table>
		<div class="div1">
			<button type="submit" onclick="fn_submit();">저장</button>
			<button type="button" onclick="self.close();">닫기</button>
		</div>
	</form>
</body>
</html>