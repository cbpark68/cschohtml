<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/dbConn.jsp"%>
<%@ include file="include/certificate.jsp"%>
<%
String pdate = request.getParameter("pdate");
if (pdate == null) {
%><script>
		alert("경로오류");
		self.close();
	</script>
<%
return;
}
String sql = "delete from plan where userid='"+sessionid+"' and pdate='"+pdate+"'";
int rs = stmt.executeUpdate(sql);
if(rs>0){
%><script>
		alert("삭제완료");
		self.close();
		opener.document.location="planList.jsp";
	</script>
<%
}else{
%><script>
		alert("삭제오류");
		self.close();
	</script>
<%
}
return;
%>