<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String unq = request.getParameter("unq");
if (unq == null || unq.equals("")) {
%><script>
	alert("경로오류");
	location = "boardList.jsp";
</script>
<%
return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<link rel="stylesheet" href="css/boardMain.css" />
<style>
.box_title {
	width: 90%;
}

.box_name {
	width: 150px;
}
</style>
<script>
	function fn_submit() {
		var f = document.frm;

		if (f.pass.value == "") {
			alert("비번을 입력해 주세요");
			f.pass.focus();
			return false;
		}

		f.submit();
	}

	function fn_onload() {
		document.frm.pass.focus();
	}
</script>
<body onload="fn_onload();">
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
				<form name="frm" method="post" action="boardDelete.jsp">
					<input type="hidden" name="unq" value="<%=unq%>" />
					<table style="width: 400px; position: relative; left: 100px">
						<caption>게시판비번입력화면</caption>
						<colgroup>
							<col width="25%" />
							<col width="*" />
						</colgroup>
						<tbody>
							<tr>
								<th>비번</th>
								<td><input type="password" name="pass" class="box_name"
									maxlength="20" required /></td>
							</tr>
						</tbody>
					</table>
					<div style="width: 600px; text-align: center; margin-top: 10px;">
						<button type="button" onclick="history.back();">뒤로가기</button>
						<button type="submit" onclick="fn_submit();return false;">삭제</button>
						<button type="reset">취소</button>
					</div>
				</form>
			</article>
		</section>
		<footer><%@include file="boardFooter.jsp"%></footer>
	</div>
</body>
</html>