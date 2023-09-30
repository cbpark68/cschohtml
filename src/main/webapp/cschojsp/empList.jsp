<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String sql1 = "select count(*) cnt from emp";
ResultSet rs1 = stmt.executeQuery(sql1);
rs1.next();
int totcnt = rs1.getInt("cnt");
int rownumber = totcnt;
String sql = "select empno,ename,job,sal,hiredate,deptno,(select dname from dept where deptno = emp.deptno) dname from emp order by empno desc";
ResultSet rs = stmt.executeQuery(sql);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/empMain.css" />
</head>

<body>
	<table align="center" style="border: 0px;">
		<tr>
			<td align="right" style="border: 0px;">
				<button type="button" onclick="location='empWrite.jsp';">사원등록</button>
		</tr>
	</table>
	<table align="center">
		<caption>사원목록</caption>
		<colgroup>
			<col width="10%" />
			<col width="20%" />
			<col width="20%" />
			<col width="25%" />
			<col width="25%" />
		</colgroup>
		<tr>
			<th>사원번호</th>
			<th>사원이름</th>
			<th>업무</th>
			<th>입사일</th>
			<th>부서</th>
		</tr>
		<%
		while (rs.next()) {
			String empno = rs.getString("empno");
			String ename = rs.getString("ename");
			String job = rs.getString("job");
			String hiredate = rs.getString("hiredate");
			String deptno = rs.getString("deptno");
			String dname = rs.getString("dname");
		%>
		<tr align="center">
			<td><%=rownumber%></td>
			<td><a href="empModify.jsp?empno=<%=empno%>"><%=ename%></a></td>
			<td><%=job%></td>
			<td><%=hiredate%></td>
			<td><%=dname%></td>
		</tr>
		<%
		rownumber--;
		}
		%>
	</table>
	<table align="center" style="border: 0px;">
		<tr>
			<td align="left" style="border: 0px;">전체 인원 : <%=totcnt%>명
		</tr>
	</table>
</body>
</html>