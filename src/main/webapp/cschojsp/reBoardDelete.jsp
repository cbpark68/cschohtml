<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%
String unq = request.getParameter("unq");
String pass2 = request.getParameter("pass");

if (unq == null || pass2 == null || unq.equals("") || pass2.equals("")) {
%><script>
		alert("경로오류");
		location = "reBoardList.jsp";
	</script>
<%
return;
}
String sql2 = "select count(*) cnt from reboard where unq = " + unq + " and pass = '" + pass2 + "'";
ResultSet rs2 = stmt.executeQuery(sql2);
rs2.next();
int cnt = rs2.getInt("cnt");
if (cnt == 0) {
%><script>
	alert("비번오류");
	history.back();
</script>
<%
return;
}

String sql3 = "select gid,thread from reboard where unq = "+unq;
ResultSet rs3 = stmt.executeQuery(sql3);
rs3.next();
int gid = rs3.getInt("gid");
String thread = rs3.getString("thread");

String sql4 = "select count(*) cnt2 from reboard where gid = "+gid+" and thread like '"+thread+"_'";
ResultSet rs4 = stmt.executeQuery(sql4);
rs4.next();
int cnt2 = rs4.getInt("cnt2");

String sql = "";
if(cnt2>0){
	sql = "update reboard set title='작성자에의한 삭제',content='' where unq = "+unq;	
}else{
	sql = "delete from reboard where unq = "+unq;
}
int	rs = stmt.executeUpdate(sql);
if (rs > 0){
%><script>
		alert("삭제완료");
		location="reBoardList.jsp";
	</script>
<%
}else{
%><script>
		alert("삭제오류");
		location="reBoardList.jsp";
	</script>
<%
}
%>