<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String sql = "select ifnull(max(empno),1000)+1 myempno from emp";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int myempno = rs.getInt("myempno");

String sql2 = "select deptno,dname from dept order by dname";
ResultSet rs2 = stmt.executeQuery(sql2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/empMain.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
	$(function() {
		$("#hiredate").datepicker({
			dateFormat : 'yy-mm-dd',
			changeMonth : true,
			changeYear : true
		});
	});
</script>
</head>
<script>
	function fn_submit() {
		if (document.frm.empno.value == "") {
			alert("사원번호를 입력하세요");
			document.frm.empno.focus();
			return false;
		}
		if (document.frm.ename.value == "") {
			alert("사원이름을 입력하세요");
			document.frm.ename.focus();
			return false;
		}
		document.frm.submit();
	}
</script>
<body>
	<form name="frm" method="post" action="empWriteSave.jsp">
		<table align="center">
			<caption style="font-size: 18px;">사원정보등록</caption>
			<tr>
				<th width="30%">사원번호</th>
				<td width="70%"><input type="text" name="empno"
					value="<%=myempno%>" readonly /></td>
			</tr>
			<tr>
				<th>사원이름</th>
				<td><input type="text" name="ename" /></td>
			</tr>
			<tr>
				<th>업무</th>
				<td><input type="text" name="job" /></td>
			</tr>
			<tr>
				<th>급여</th>
				<td><input type="text" name="sal" /></td>
			</tr>
			<tr>
				<th>입사일</th>
				<td><input type="text" name="hiredate" id="hiredate"/></td>
			</tr>
			<tr>
				<th>부서</th>
				<td><select name="deptno">
						<%
						while (rs2.next()) {
							String deptno = rs2.getString("deptno");
							String dname = rs2.getString("dname");
						%><option value="<%=deptno%>"><%=dname%></option>
						<%
						}
						%>
				</select>
			</tr>
		</table>
		<div style="width: 100%; text-align: center; margin-top: 6px;">
			<button type="submit" onclick="fn_submit();return false;">저장</button>
			<button type="reset">재설정</button>
			<button type="button" onclick="location='empList.jsp';">목록</button>
		</div>
	</form>
</body>
</html>