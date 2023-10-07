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
String sql = "select title,content from plan where userid='"+sessionid+"' and pdate='"+pdate+"'";
ResultSet rs = stmt.executeQuery(sql);
String title="";
String content="";
if(rs.next()){
	title=rs.getString("title");
	content=rs.getString("content");
}else{
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

function fn_modify(){
	location="planModify.jsp?pdate=<%=pdate%>";
}
function fn_delete(){
if(confirm("삭제하시겠습니까?")){
	location="planDelete.jsp?pdate=<%=pdate%>";
}
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
		<table>
			<caption>일정조회</caption>
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
				<td><%=title%></td>
			</tr>
			<tr>
				<th>내용</th>
				<td height="120" valign="top"><%=content %></td>
			</tr>
		</table>
		<div class="div1">
			<button type="button" onclick="fn_modify();">수정</button>
			<button type="button" onclick="fn_delete();">삭제</button>
			<button type="button" onclick="self.close();">닫기</button>
		</div>
	</form>
</body>
</html>