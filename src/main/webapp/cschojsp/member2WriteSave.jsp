<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String userid = request.getParameter("userid");
String pass2 = request.getParameter("pass");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String mobile = request.getParameter("mobile");
String birthday = request.getParameter("birthday");
String zipcode = request.getParameter("zipcode");
String addr = request.getParameter("addr");

if (userid == null)
	userid = "";
if (pass2 == null)
	pass2 = "";
userid = userid.trim();
pass2 = pass2.trim();
name = name.trim();

if (userid == null || pass2 == null || userid.equals("") || pass2.equals("")) {
%><script>
	alert("오류발생");
	history.back();
</script>
<%
return;
}

String sql2 = "select count(*) cnt from memberinfo where userid='" + userid + "'";
ResultSet rs2 = stmt.executeQuery(sql2);
rs2.next();
int cnt = rs2.getInt("cnt");
if (cnt > 0) {
%><script>
		alert("사용중인 아이디입니다.");
		history.back();
	</script>
<%
return;
}
String sql = "insert into memberinfo (userid,pass,name,gender,birthday,mobile,zipcode,addr,rdate) values ";
sql += " ('"+userid+"','"+pass2+"','"+name+"','"+gender+"','"+birthday+"','"+mobile+"','"+zipcode+"','"+addr+"',now()) ";
int rs = stmt.executeUpdate(sql);
if (rs > 0) {
%><script>
	alert("저장완료");
	location = "boardMain.jsp";
</script>
<%
} else {
%><script>
	alert("저장오류");
	history.back();
</script>
<%
}
%>