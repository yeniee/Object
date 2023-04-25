<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Object/css/member/delete.css">
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
		
		<div class="conateinr">
		
			<div class="delete_wrap">
				<div class="box">
					<span class="text">아이디</span> 
					<input type="text" name="ob_id" class="ob_id" id="ob_id">  
				</div><!--  box -->
				<div class="box">
					<span class="text">비밀번호</span>
					<input type="password" name="ob_password" class="ob_password" id="ob_password">  
				</div><!--  box -->
			</div><!-- delete_wrap -->
			
			<div class="btn_box">
				<button type="button" onclick="mdelete()" class="deletebtn">탈퇴하기</button>
			</div>		
		</div><!-- container -->	
	</div><!-- wrap -->
<%@include file = "../footer.jsp" %>	
<script type="text/javascript" src="/Object/js/member/delete.js"></script>








</body>
</html>