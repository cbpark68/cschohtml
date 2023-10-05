<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편번호</title>
</head>
<style>
div{
	font-size:12px;
	width:100%;
	height:190px;
	text-align:center;
	background-color:skyblue;
}
</style>
<script>
function fn_submit(){
	if(document.frm.dong.value == ""){
		alert("검색어를 입력하세요");
		document.frm.dong.focus();
		return false;
	}	
	document.frm.submit();	
}
</script>
<body onload="document.frm.dong.focus();">
	<div>
		<br/><br/>
		<form name="frm" method="post" action="post2.jsp">
			<input type="text" name="dong" />
			<button type="submit" onclick="fn_submit();return false;">조회</button>
		</form>
	</div>
</body>
</html>