<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="util.CookieUtil"%>
<%
String cookieid = "";
CookieUtil cookie = new CookieUtil(request);
if (cookie.exists("CookieUserId") && !cookie.getValue("CookieUserId").equals("")) {
	cookieid = cookie.getValue("CookieUserId");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<link rel="stylesheet" href="css/boardMain.css" />
<script>
	function fn_submit() {
		if (document.frm.userid.value == "") {
			alert("아이디를 입력하세요");
			document.frm.userid.focus();
			return false;
		}
		if (document.frm.pass.value == "") {
			alert("비번을 입력하세요");
			document.frm.pass.focus();
			return false;
		}
		document.frm.submit();
	}
</script>
<body>
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
				<form name="frm" method="post" action="loginWriteSub.jsp">
					<table style="width: 400px; position: relative; left: 120px;">
						<caption>로그인</caption>
						<colgroup>
							<col width="25%" />
							<col width="*" />
						</colgroup>
						<tbody>
							<tr>
								<td>아이디</td>
								<td><input type="text" name="userid" value="<%=cookieid%>" /><br />
									<input type="checkbox" name="idsave" value="1"
									<%if (!cookieid.equals("")) { out.print("checked"); }%> />아이디기억하기</td>
							</tr>
							<tr>
								<td>비번</td>
								<td><input type="password" name="pass" /></td>
							</tr>
						</tbody>
					</table>
					<div
						style="width: 400px; text-align: center; margin-top: 10px; position: relative; left: 120px;">
						<button type="submit" onclick="fn_submit();return false;">로그인</button>
					</div>
				</form>
			</article>
		</section>
		<footer><%@include file="boardFooter.jsp"%></footer>
	</div>
</body>
</html>