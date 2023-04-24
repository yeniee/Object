<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Object/css/member/mypage.css">
</head>
<body>

<%@include file = "../header.jsp" %>

<% 
	//만약에 로그인을 하지 않았으면 로그인페이지로 보내버림
	if(loginid == null) { 
		%> <script>location.href = "login.jsp"; </script> <%
	}
%>

<div class="wrap">

	<h3>회원정보</h3>
	<div class="conatainr">
		<table class="table">
			<tr>	
				<td class="td1">회원번호</td>
				<td class="td2 ob_num"> </td>
			</tr>
			<tr>
				<td class="td1">아이디</td>
				<td class="td2 ob_id"> </td>
			</tr>
			<tr>
				<td class="td1">이름</td>
				<td class="td2 ob_name"> </td>
			</tr>
			<tr>	
				<td class="td1">전화번호</td>
				<td class="td2 ob_phone"> </td>
			</tr>
			<tr>	
				<td class="td1">이메일</td>
				<td class="td2 ob_email"> </td>
			</tr>
		
			<tr>	
				<td class="td1">가입날짜</td>
				<td class="td2 ob_signup_date"> </td>
			</tr>		
			
			<tr>	
				<td class="td1">주소</td>
				<td class="td2 ob_address"> </td>
			</tr>	
		
			<tr>	
				<td class="td1">포인트</td>
				<td class="td2 ob_point"> </td>
			</tr>	
			
		
		</table>
	</div><!-- container -->
	
	
	<div class="btn_section">		
		<a href="/Object/member/update.jsp" class="btn updatebtn">수정하기</a>
		<a href="/Object/member/delete.jsp" class="btn deletebtn">탈퇴하기</a>
	</div><!-- btn_section -->



</div><!-- wrap -->

<script type="text/javascript" src="/Object/js/member/mypage.js"></script>


</body>
</html>

<!-- 
일단 마이페이지는 로그인을 하면 내 정보를 볼 수 있도록 작업을 한다
로그인을 안한 상태로 정보를 본다는 것은 말이 되지 않으니까.

세션이 있으니 아이디만 알면 모든 정보를 알 수 있다? 이거 맞는 말인가
세션 너무 어렵다 ㅠ


회원정보 수정하기

수정이 가능한 
이름/ 전화번호/ 이메일/ 주소? 등을 수정 할 수 있도록
그냥 아이디랑 고유번호랑 
아 근데 주소 수정하기 무지 귀찮을 것 같은데..또 카카오 끌어와야 하는거야?ㅜ진짜 귀찮은데
귀찮아도 해야겠지?

그럼 이름이랑 전화번호랑 이메일 주소 등등을 가지고 묶어서 
객체로 묶어서 
ajax로 넘긴다 type은 put으로 한번가보자 이럴줄알고 서블릿에서 put이랑 delete를 만들어보았다.
변수로 만들어서 이름이랑 전화번호랑 이메일이랑 주소를 묶어서
어차피 수정안한 정보도 남아있을테니 넘어가는 건 문제가 없을거라 생각한다

다오 찍고 update 해주고 리턴리턴 결과값이 true이면 수정 성공! 아니면 수정실패

회원탈퇴
일단 회원탈퇴는 아이디랑 비밀번호를 입력하자 회원탈퇴사유도 적어야하나? 그것도 db에 써야하나
1번 회원의 탈퇴사유,,,그냥  / 더이상 사용할 이유가 없어서 이런식으로? 해야하나? 
아 일단 아이디랑 비밀번호만 받아서 일치하면 탈퇴 성공 아니면 탈퇴실패
 












객체로 묶어서 가져오고
서블릿 통신하고 put방식으로 가져가서 dao 찍고 오면됨


회원 탈퇴하기
회원탈퇴는 아이디랑 비밀번호 입력받고 탈퇴사유도 써야 하나 아 진짜 귀찮은데
그럼 탈퇴사유 db도 만들어야 하는건가?..아아아아아아아아앙ㅇ아아아아 귀찮아아아아

그냥...아이디랑 비밀번호만 입력해서 가져가자 아니다...근데 탈퇴사유 받는 곳 도 있는데

더이상 사용할 이유가 없어서
기타등등
이렇게 가지고 가서 













 -->