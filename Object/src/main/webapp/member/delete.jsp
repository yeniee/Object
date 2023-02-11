<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@include file = "../header.jsp" %>

<% 
	//만약에 로그인을 하지 않았으면 로그인페이지로 보내버림
	if(loginid == null) { 
		%> <script>location.href = "login.jsp"; </script> <%
	}
%>

	<div id="wrap">
		
		<div class="mdelete">
			<div>
				<span>아이디</span> 
				<input type="text" name="ob_id" class="ob_id" id="ob_id">  
			</div>
			<div>
				<span>비밀번호</span>
				 <input type="password" name="ob_password" class="ob_password" id="ob_password">  
			</div>
			
			<button type="button" onclick="mdelete()">탈퇴하기</button>
		
		</div><!-- mdelete -->	
	</div><!-- wrap -->
<%@include file = "../footer.jsp" %>	
<script type="text/javascript" src="/Object/js/member/delete.js"></script>








</body>
</html>