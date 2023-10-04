<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
</head>
<link rel="stylesheet" href="css/boardMain.css" />
<style>
td{
	text-align:left;
	line-height:1.6;
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

		if (f.title.value == "") {
			alert("제목을 입력해 주세요");
			f.title.focus();
			return false;
		}
		if (f.pass.value == "") {
			alert("비번을 입력해 주세요");
			f.pass.focus();
			return false;
		}

		f.submit();
	}

	function fn_onload() {
		document.frm.title.focus();
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
				<form name="frm" method="post" action="boardWriteSave.jsp">
					<table>
						<caption>회원등록</caption>
						<colgroup>
							<col width="25%" />
							<col width="*" />
						</colgroup>
						<tbody>
							<tr>
								<th>아이디</th>
								<td><input type="text" name="userid" class="box2"
									required />
									<button type="button">중복확인</button></td>
							</tr>
							<tr>
								<th>비번</th>
								<td><input type="password" name="pass" class="box2"
									required /></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" name="name" class="box2" required /></td>
							</tr>
							<tr>
								<th>성별</th>
								<td><input type="radio" name="gender" value="M" />남성 <input
									type="radio" name="gender" value="M" />여성</td>
							</tr>
							<tr>
								<th>생일</th>
								<td><input type="text" name="birthday" id="birthday"
									class="box2" /></td>
							</tr>
							<tr>
								<th>핸드폰</th>
								<td><input type="text" name="mobile" class="box2" /></td>
							</tr>
							<tr>
								<th>주소</th>
								<td><input type="text" name="zipcode" class="box2" />
								<button type="button">우편번호</button>
									<br /> <input type="text" name="addr" class="box1" /></td>
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