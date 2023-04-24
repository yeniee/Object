<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Object/css/member/changepassword.css">
</head>
<body>
<%@include file = "../header.jsp" %>
<div class="wrap">
	<h2>새로운 비밀번호</h2>	
	<div class="container">	
		
		<div class="change_wrap">
		
			<div class="input_wrap">
			<div class="box">
					<span class="text">비밀번호</span> 
					<span class="span_input">
						<input type="text" name="ob_password" class="ob_password" onkeyup="check1()">				
					</span>
				</div><!-- box -->
		
				<div class="box">
					<span class="text">비밀번호 확인</span> 
					<span class="span_input">
						<input type="text" name="ob_password" class="new_ob_password" onkeyup="check2()">				
					</span>
				</div><!-- box -->			
			</div><!-- input_wrap -->
			
			
			
				
		 
			<div class="btn_box">  
				<button type="button" onclick="uppassword()" class="updatebtn">수정하기</button>
			</div>
		</div><!-- change_wrap -->
		<span class="check"></span>
	</div><!-- container -->
	
</div><!-- wrap -->
<script src="/Object/js/member/changepassword.js"></script>

</body>
</html>
<!-- 
입력받은 비밀번호와
한번더 입력받은 비밀번호가 일치하면 이거는 서블릿에서 진행해야하는건가?
비밀번호 수정 완료
그렇지 않으면 다시 입력하기
+ 정규표현식 진행
 -->