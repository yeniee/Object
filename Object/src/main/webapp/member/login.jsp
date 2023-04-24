<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- <link rel="stylesheet" href="/Object/css/css.css"> -->
	<link rel="stylesheet" href="/Object/css/member/login.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&family=Poiret+One&family=Quicksand:wght@300;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body>
<%@include file = "../header.jsp" %>	<!--  헤더 파일 가져오기 -->

	<div id="wrap">		
		<div class="box">
			<h3>로그인</h3>	
			<div class="login">
				<div class="container">
					<div class="loginbox">
						<span class="text">아이디</span>						
						<span class="textinput">
							<input type="text" name="ob_id" id="ob_id" class="ob_id">
						</span>
					</div><!-- loginbox -->			
					<div class="loginbox">
						<span class="text">비밀번호</span>
						<span class="textinput">
							<input type="password" name="ob_password" id="ob_password" class="ob_password">
						</span>
					</div><!-- loginbox -->			
				</div><!-- container -->
		
				
				<button type="button" onclick="login()" class="loginbtn"> 로그인하기</button>
			</div><!-- login -->	
			
			<div class="find">
				<a href="/Object/member/findid.jsp">아이디 찾기</a>
				<a href="/Object/member/findpassword.jsp">비밀번호 찾기</a>
			</div><!-- find -->		
		</div><!-- loginbox -->

		
			
		
	</div><!-- wrap -->


<script type="text/javascript" src="/Object/js/member/login.js"></script>
<%@include file = "../footer.jsp" %>	<!--  푸터 파일 가져오기 -->
</body>
</html>



<!-- 아이디 찾기
	아이디 찾기 버튼을 클릭하면 아이디 찾기 창으로 넘어간다.
	이름과 전화번호와 입력받는다. 
	이름과 전화번호가 일치하면 아이디를 알려준다.
	
	비밀번호 찾기
	
	비밀번호는 아이디와 전화번호 이메일을 입력받는다
	이 세가지가 일치하면
	일단 ajax로 아이디와 전화번호와 이메일의 값을 가지고 넘어가서 
	
	난수말고 새로운 비밀번호를 변경할 수 있도록  난수 할때마다 또 변경하려니 아찔함..
	새로운비밀번호와 비밀번호 확인한번 더 확인하고 일치하면
	비밀번호 변경 성공!
 -->