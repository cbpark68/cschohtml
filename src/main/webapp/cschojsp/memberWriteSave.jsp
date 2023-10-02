<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String no = request.getParameter("no");
String id = request.getParameter("id");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String[] hobby = request.getParameterValues("hobby");
String date = request.getParameter("date");

if (no == null || id == null || name == null || id.equals("") || no.equals("") || name.equals("")) {
%><script>
	alert("오류가 발생했습니다");
	location = "memberIndex.jsp";
</script>
<%
}
String shobby = "";
if (hobby != null) {
	for (int i = 0; i < hobby.length; i++) {
		shobby += hobby[i] + ",";
	}
	shobby = shobby.substring(0, shobby.length()-1);
}

String sql = "insert into member_tbl (member_no,member_id,member_name,member_grade,member_hobby,member_date) ";
sql += "values ('" + no + "','" + id + "','" + name + "','" + grade + "','" + shobby + "','" + date + "')";
int rs = stmt.executeUpdate(sql);
if (rs > 0) {
%><script>
	alert("등록완료");
	location = "memberIndex.jsp";
</script>
<%
} else {
%><script>
	alert("등록실패");
	history.back();
</script>
<%
}
%>