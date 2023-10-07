<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%@ include file="include/certificate.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String pyear = request.getParameter("pyear");
String pmonth = request.getParameter("pmonth");
Calendar cal = Calendar.getInstance();
int cyear = cal.get(Calendar.YEAR);
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH) + 1;
if (pyear != null && !pyear.equals("")) {
	year = Integer.parseInt(pyear);
}
if (pmonth != null && !pmonth.equals("")) {
	month = Integer.parseInt(pmonth);
}
cal.set(year, month - 1, 1);
int dayofweek = cal.get(Calendar.DAY_OF_WEEK);
int lastday = cal.getActualMaximum(Calendar.DATE);
int prev_year = year;
int prev_month = month - 1;
if (prev_month < 1) {
	prev_year = year - 1;
	prev_month = 12;
}
int next_year = year;
int next_month = month + 1;
if (next_month > 12) {
	next_year = year + 1;
	next_month = 1;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정관리</title>
</head>
<link rel="stylesheet" href="css/boardMain.css" />
<style>
.tdiv1 {
	float: left;
	width: 30%;
}

.tdiv2 {
	float: left;
	width: 40%;
	text-align: center;
}

.tdiv3 {
	float: left;
	width: 30%;
	text-align: right;
}
</style>
<script>
	function fn_planwrite() {
<%
if (sessionid == null) {%>
	alert("로그인으로 이동합니다");
		location = "loginWrite.jsp";
<%return;
} else {%>
	var w = window.screen.width / 2 - 200;
		var h = window.screen.height / 2 - 200;
		var url = "planWrite.jsp";
		window.open(url, "planwrite", "width=400,height=400,left=" + w
				+ ",top=" + h);
<%}%>
	}
	function fn_detail(pdt) {
		var url = "planView.jsp?pdate=" + pdt;
		var w = window.screen.width / 2 - 200;
		var h = window.screen.height / 2 - 200;
		window.open(url, "planview", "width=400,height=400,left=" + w + ",top="
				+ h);
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
				<div style="width: 600px;">
					<div class="tdiv1">&nbsp;</div>
					<div class="tdiv2">
						<button type="button"
							onclick="location='<%=request.getRequestURI()%>?pyear=<%=prev_year%>&pmonth=<%=prev_month%>'">이전</button>
						<%=year%>년
						<%=month%>월
						<button type="button"
							onclick="location='<%=request.getRequestURI()%>?pyear=<%=next_year%>&pmonth=<%=next_month%>'">이전</button>
					</div>
					<div class="tdiv3">
						&nbsp;
						<button type="button" onclick="fn_planwrite();">일정등록</button>
					</div>
				</div>
				<table>
					<tr>
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
					<tr>
						<%
						int count = 0;
						for (int s = 1; s < dayofweek; s++) {
							count++;
							out.print("<td></td>");
						}
						for (int d = 1; d <= lastday; d++) {
							count++;
							String color = "#555555";
							if (count == 7) {
								color = "blue";
							} else if (count == 1) {
								color = "red";
							}
							String pdate = year + "-" + month + "-" + d;
							String psql = "select count(*) cnt from plan where userid='" + sessionid + "' and pdate = '" + pdate + "'";
							ResultSet prs = stmt.executeQuery(psql);
							prs.next();
							int pcnt = prs.getInt("cnt");
							if (pcnt > 0) {
								color = "pink";
						%>
						<td style="background-color:<%=color%>;"><a
							href="javascript:fn_detail('<%=pdate%>');"><%=d%></a></td>
						<%
						} else {
						%>
						<td style="color:<%=color%>;"><%=d%></td>
						<%
						}
						if (count == 7) {
						count = 0;
						out.print("</tr><tr>");
						}
						}
						if (count != 0) {
						while (count < 7) {
						count++;
						out.print("<td></td>");
						}
						}
						%>
					</tr>
				</table>
			</article>
		</section>
		<footer><%@include file="boardFooter.jsp"%></footer>
	</div>
</body>
</html>