<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String dong = request.getParameter("dong");
if (dong == null) {
%><script>
	alert("접속오류");
	self.close();
</script>
<%
return;
}
dong = dong.trim();
if (dong.equals("")) {
%><script>
	alert("입력필수");
	history.back();
</script>
<%
return;
}

String sqltot = "select count(*) tot from zipcode where z09 like '%" + dong + "%'";
ResultSet rstot = stmt.executeQuery(sqltot);
rstot.next();
int tot = rstot.getInt("tot");

String sql = "select z01,z02,z04,z09,z16 from zipcode where z09 like '%" + dong + "%'";
ResultSet rs = stmt.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편번호</title>
</head>
<style>
div {
	font-size: 12px;
	width: 100%;
	height: 190px;
	text-align: center;
	background-color: skyblue;
}
</style>
<script>
	function fn_test(){
		alert("test");
		
	}
	function fn_action() {
		var adrs = document.frm.addr.value;
 		var arr = adrs.split(" ");
		var zipcode = arr[0].substring(1,5);
		var addr2 = adrs.replace(arr[0], "");
		opener.frm.zipcode.value = zipcode;
		opener.frm.addr.value = addr2;
		self.close();
	}
</script>
<body>
	<div>
	<form name="frm" method="post" action="">
		<br /> 검색결과 :
		<%=tot%>건<br />
		<%
		if (tot > 0) {
		%>
		<select name="addr">
			<%
			while (rs.next()) {
				String z01 = rs.getString("z01");
				String z02 = rs.getString("z02");
				String z04 = rs.getString("z04");
				String z09 = rs.getString("z09");
				String z16 = rs.getString("z16");
				String addr = "[" + z01 + "] " + z04 + " " + z09 + " " + z16;
			%>
			<option value="<%=addr%>"><%=addr%></option>
			<%
			}
			%>
		</select>
		<button type="button" onclick="fn_action();">적용</button>
		<%
		} else {
		%>검색결과가 없습니다<%
		}
		%>
	</form>
	</div>
</body>
</html>