<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
int prev_month = month-1;
if(prev_month < 1){
	prev_year = year - 1;
	prev_month = 12;
}
int next_year = year;
int next_month = month+1;
if(next_month > 12){
	next_year = year + 1;
	next_month = 1;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar1</title>
</head>
<style>
body {
	font-size: 12px;
	color: #555555;
}

table {
	border-collapse: collapse;
}

th, td {
	border: 1px solid #cccccc;
	width: 50px;
	height: 25px;
	text-align: center;
}

caption {
	margin-bottom: 10px;
	font-size: 15px;
}

input {
	width: 50px;
}
</style>
<body>
	<form name="frm" method="get" action="<%=request.getRequestURI()%>">
		<select name="pyear">
		<% 
			for(int y=(cyear-20);y<(cyear+20);y++){		
				String sel1 = "";
				if(pyear == null || pyear.equals("")){
					Calendar cal2 = Calendar.getInstance();
					pyear = ""+cal2.get(Calendar.YEAR);
				}
				if(y == Integer.parseInt(pyear)){
					sel1 = "selected";
				}
				out.print("<option value=\""+y+"\" "+sel1+">"+y+"년</option>");
			}
		%>
		</select>
		&nbsp;
		<select name="pmonth">
		<%
			for(int m=1;m<=12;m++){		
				String sel2 = "";
				if(pmonth == null || pmonth.equals("")){
					Calendar cal2 = Calendar.getInstance();
					pmonth = ""+(cal2.get(Calendar.MONTH)+1);
				}
				if(m == Integer.parseInt(pmonth)){
					sel2 = "selected";
				}
				out.print("<option value=\""+m+"\" "+sel2+">"+m+"월</option>");
			}
		%>
		</select>
		<button type="submit">달력보기</button>
	</form>
	<p/>
	<table>
		<caption>
			<button type="button" onclick="location='<%=request.getRequestURI()%>?pyear=<%=prev_year%>&pmonth=<%=prev_month%>'">이전</button>
			<%=year%>년
			<%=month%>월
			<button type="button" onclick="location='<%=request.getRequestURI()%>?pyear=<%=next_year%>&pmonth=<%=next_month%>'">이전</button>
		</caption>
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
				out.print("<td style=\"color:" + color + "\">" + d + "</td>");
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
</body>
</html>