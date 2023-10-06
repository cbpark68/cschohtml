<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비번변경</title>
</head>
<style>
table{
	border-collapse:collapse;
}
th,td{
	border: 0px solid gray;
}
</style>
<script>
function fn_submit(){
	var f=document.frm;
	if(f.pass1.value == ""){
		alert("현재비번을 입력하세요")
		f.pass1.focus();
		return false;
	}
	if(f.pass2.value == ""){
		alert("새비번을 입력하세요")
		f.pass2.focus();
		return false;
	}
	if(f.pass3.value == ""){
		alert("새비번을 재입력하세요")
		f.pass3.focus();
		return false;
	}
	if(f.pass2.value != f.pass3.value){ 
		alert("새비번이 일치하지 않습니다.");
		f.pass2.focus();
		return false;
	}
	f.submit();
}
</script>
<body>
	<form name="frm" mehtod="post" action="member2PassChangeSub.jsp">
		<table>
			<tr>
				<th>현재비번</th>
				<td><input type="password" name="pass1"/></td>
			</tr>
			<tr>
				<th>새로운비번</th>
				<td><input type="password" name="pass2"/></td>
			</tr>
			<tr>
				<th>새비번재입력</th>
				<td><input type="password" name="pass3"/></td>
			</tr>
		</table>
		<div style="text-align:center;margin-top:10px;">
		<button type="submit" onclick="fn_submit();return false;">적용</button>
		<button type="button" onclick="self.close();">닫기</button>
		</div>
	</form>
</body>
</html>