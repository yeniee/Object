<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<%
	session.setAttribute("ob_id", null ); // 특정 세션 제거 
	//페이지전환
	response.sendRedirect("/Object/index.jsp");
	
	
%>

<!-- 모든세션을 삭제함 
session.invalidate(); 
모든 세션을 삭제하기 때문에 나머지 세션도 다 날라가는 경우도 있어서
특정세션을 지우는 경우도 있다.
-->
</body>
</html>