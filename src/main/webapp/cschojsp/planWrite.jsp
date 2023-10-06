<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
caption{
font-size:14px;
font-weight:bold;
}
.div1 {
	width: 90%;
	text-align: center;
	margin-top: 10px;
}
</style>
<body>
	<form name="frm" method="post" action="planWriteSave.jsp">
		<table>
			<caption>일정등록</caption>
			<colgroup>
				<col width="30%" />
				<col width="*" />
			</colgroup>
			<tr>
				<th>날짜</th>
				<td><input type="text" name="pdate" id="pdate" style="width:97%" /></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" style="width:97%" />
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" style="width:98%;height:100px;"></textarea></td>
			</tr>
		</table>
		<div class="div1">
			<button type="submit">등록</button>
			<button type="button" onclick="self.close();">닫기</button>
		</div>
	</form>
</body>
</html>