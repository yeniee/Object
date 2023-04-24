<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Object/css/member/findpassword.css">
</head>
<body>
<%@include file = "../header.jsp" %>
<div class="wrap">
	<h2>비밀번호 찾기</h2>	
	<div class="container">
		<div class="find_wrap">
			<div class="input_wrap">
				<div class="box">
					<span class="text">아이디 :</span>
					<span class="span_input"> 
						<input type="text" name="ob_id" id="ob_id">		
					</span>
				</div><!-- box -->
		
				<div class="box">
					<span class="text">이름 :</span>
					<span class="span_input"> 
						<input type="text" name="ob_name" id="ob_name">		
					</span>
				</div><!-- box -->	
		
				<div class="box">
					<span class="text">이메일 : </span>		
						<input type="text" id="ob_email_1" name="ob_email">						
						<span class="sms">@</span>
						<input type="text" id="ob_email_2" name="ob_email" readonly="readonly">
									
						<select id="change_email" name="ob_email" >
							<option value="none">선택하세요</option>
							<option value="self">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="kakao.com">kakao.com</option>							
						</select>					
				</div><!-- box -->
			</div><!-- input_wrap -->
			
			
			
			<div class="btn_box"> 
				<button type="button" onclick="findpassword()" class="findpassword">비밀번호 찾기</button>	
			</div><!-- btn_box -->
			
		</div><!-- find_wrap -->	
	
	
		
	
		<div class="findbox"></div>
	
		<div class="link_box"> 
			<a href="/Object/member/login.jsp">로그인하기</a>
			<a href="/Object/member/findid.jsp">아이디찾기</a>
			<a href="/Object/member/signup.jsp">회원가입하기</a>
		</div><!-- link_box -->
	</div><!-- container -->
</div><!-- wrap -->
<script type="text/javascript" src="/Object/js/member/findpassword.js"></script>

</body>
</html>




<!-- 

빠른 진행을 위해  회원정보 작성해 놓았습니다. 집버전

아이디 : qweqweqwe
비밀번호 : qweqweqwe
이름 : qweqweqwe
전화번호 : 010-4444-4444
이메일 : qweqwe @naver.com

1) 아이디 찾기 

MemberDao 5. 아이디찾기
findid.js

String으로 선언 하였습니다. 아이디를 
경우의 수는 달라진 것이 없습니다.
sql문은 각각의 정보가 존재하는지 확인하기 위해 하나씩 sql문을 작성하였습니다.

1. 이름이 존재하는 지 확인 후 , -> 없으면 이름이 틀림 			-> 잘 나옵니다 (O)

2. 전화번호가 존재하는지 확인 후 -> 없으면 전화번호가 틀림			-> 전화번호를 맞게 입력했는데 전화번호가 일치하지 않는다고 합니다 (X)

3. 이름과 전화번호가 같이 존재하는지 -> 있으면 아이디를 알려줌		-> 안나옵니다ㅠㅠ (X)

4. 둘다 존재하지않으면 회원이 아니다					-> 일부러 틀리게 했는데 이름이 일치하지 않는다고 합니다. (X)

5. db의 오류이다. 							-> 현재까지는 나오지 않습니다.

5개의 return문을 작성했는데  return 에서 빨간줄이 뜹니다..... 
결과값도 정말 엉뚱하게 납니다..





2) 비밀번호 찾기 
MemberDao 6. 비밀번호 찾기 위한 아이디/이름/메일 확인하기
위 아이디찾기와 동일합니다.

1. 아이디가 존재하는지 확인후 , -> 없으면 아이디가 틀림				-> 잘 나옵니다. (O)	
2. 이름이 존재하는 지 확인 후 -> 없으면 이름이 틀림				-> 잘 나옵니다. (O)			
3. 이메일이 존재하는지 확인 후  -> 없으면 이메일이 틀림				-> 이름이 틀리다고 나옵니다. (X)
4. 아이디,이름,이메일이 모두 같으면 -> 비밀번호  변경하기 사이트로 넘어감		-> 잘 나옵니다. (O)
5. db오류									-> 현재까지는 나오지 않습니다.
6. 회원이 아니다 (다 틀리게 입력하면)						-> 아이디가 틀리다고 나옵니다. (X)		

6개의 return문을 작성했는데  return 에서 빨간줄이 뜹니다.....


 -->