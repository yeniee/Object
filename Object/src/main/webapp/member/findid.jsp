<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
<link rel="stylesheet" href="/Object/css/member/findid.css">
</head>
<body>

<%@include file = "../header.jsp" %>
<div class="wrap">
	<h2>아이디 찾기</h2>
	<div class="container">
	
		
		<div class="find_wrap">  
			<div class="input_wrap">
				<div class="box">
					<span class="text">이름</span> 
					<span class="span_input">
						<input type="text" name="ob_name" id="ob_name" class="name-input ob_name">
					</span>						
				</div><!-- box -->
				
				<div class="box">
					<span class="text">전화번호</span>		 
						<input type="text" id="ob_phone_1" class="phone-input ob_phone_1" name="ob_phone" onkeyup="phone_focus()">
							<span class="hyphen">-</span>
						<input type="text" id="ob_phone_2" class="phone-input ob_phone_2" name="ob_phone" onkeyup="phone_focus()">
							<span class="hyphen">-</span>
						<input type="text" id="ob_phone_3" class="phone-input ob_phone_2" name="ob_phone" onkeyup="phone_focus()">		
				</div><!-- box -->
				
			</div><!-- input_wrap -->
					
			<div class="btnbox">
				<button type="button" onclick="findid()" class="findbtn"> 아이디 찾기</button>
			</div>
		</div><!-- find_wrap -->
		
		
		<div class="findbox"></div>
		<div class="link_box"> 
			<a href="/Object/member/login.jsp">로그인하기</a>
			<a href="/Object/member/findpassword.jsp">비밀번호찾기</a>
			<a href="/Object/member/signup.jsp">회원가입하기</a>
		</div><!-- link_box -->
	</div><!-- container -->
	
	
</div><!-- wrap -->


<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> -->
<script src="/Object/js/member/find.js"></script>
</body>
</html>


<!-- 
1. 아이디 찾기 진행을 할 때 몇가지의 경우의 수를 생각해 두었는데
	1. 둘다 일치합니다
	2. 이름는 맞으나 전화번호가 틀리다
	3. 전화번호는 맞지만 이름가 틀리다
	4. db오류다
	0. 그냥 회원이 아니다

이렇게 4가지의 경우의 수를 두고 Dao 처리할 때 int로 처리하려고 했는데
생각해보니 이렇게하면 아이디를 못가져오더라구요............String으로 해야 아이디를 알려 줄 수 있을 것 같은데
원하는 로직이 아니라서요 만약 불가능하면 그냥 포기하겠습니다. 혹시 방법이 없을까요?


2. 아이디 찾기를 진행 할 떄 이름과 전화번호 둘중에 하나라도 공백이면 
입력이 안되었다고 띄워주고 싶어요 
회원가입할때는 '성공' 이라는 단어로 구별했는데 혹시 방법이 없을까요


3. 비밀번호를 잊어버려 비밀번호 찾기 진행 과정 중 db잘 처리하고 서블릿에서 까지는
결과값을 잘 가져왔는데 js에서 과정에서 뭔가 꼬였는지 알맞게 입력을해도 모든 정보가 일치하지 않는다고 합니다.

4. 난수로 받은 비번은 사용자입장에서 그렇게 좋지 않은 방법인 것 같아
새로운 비밀번호를 입력받아 다시 update하려고 합니다. + 정규표현식 진행할 예정
입력받은 비밀번호와 한번더 확인하는 비밀번호가 일치를 해야 update처리를 하고싶은데
js에서 처리를 해야하나요 아니면 서블릿에서 처리를 해야하나요?

살짝 햇갈려서요...일단 dao 빼고는 연결해놨습니다~

 -->

<!-- 아이디 찾기
	아이디 찾기 버튼을 클릭하면 아이디 찾기 창으로 넘어간다.
	
	이름과 전화번호를 입력받는다. 
	특수문자 같은거 입력하면 안되니까 정규표현식 작성해준다.
	근데..이상한거 작성해도 안알려줄건데 구~~지 정규표현식을 해야하나?ㅎ
	정규표현식은 비밀번호 변경이나 내정보 수정 할 때 하자	
	
  	js 
  	
	js로 넘어가서 documentquerySelect로 입력받은 아이디와 전화번호를 변수에 저장한다
	전화번호는 input이 3개니까 하나의 변수로 묶어버리자
	그냥 객체로 묶어서 가자 컴퓨터는 묶는거 좋아한다고 했어
	
	ajax를 이용해서 찾는거니까 post방식으로 가자 그래도 사용자의 아이디와 전화번호는 소중하니까
	
	url을 작성해줘야 하니까 서블릿을 만들자 /member/findid 
	data 는 객체로 작성하니 알아서 하고
	type은 post로 작성하고
	
	서블깃이랑 통신확인하고 
	서블릿으로 보내준다.
	
	서블릿 
	각각의 자료형에 맞게 변수를 지정해 준다
	String ob_id / String ob_phone
	잘 들어왔는지 systemOut으로 확인해준다
	
	먼저 작성을 해도 상관이 없지만 결과값을 반환하기 위한 문을 작성한다
	아이디가 있다 없다 경우의수가 2개이므로  boolean으로 작성하자
		ㄴ+ 아니다 생각해보니 
		
		0) 둘 다 아닐수도 있고 (회원이 아니라는 뜻이겠지?)
		1) 둘 다 존재함
		2) 이름 맞는데 전화번호가 틀릴 수가 있고, 
		3) 전화번호는 맞는데 이름 틀릴 수가 있고,		
		4) db오류 일 수도 있는거네? 
		그럼 int로 가자
		
		 
	만약에 결과값이 true이면 true값을 아니면 false값을 보낸다 있는아이디 없는 아이디는 js 에서 해결할 예정
	
	다오
	객체명은  아이디를 찾는것이니 findid
	select * from 테이블명 where 아이디가 ? 이고 전화번호가 ? 이면
	
	리턴리턴 근데 ~~님의 아이디 이렇게 받고싶다 그러면 name값도 받아야겠다. 맞나?
	그러면 pk값도 받아야하는건가?
	select 로 했으니 rs는 executeQuery로 하고 하나만 찾는것이니 if(rs.next()) 로 받아
	리턴리턴 다오는 아까 작성을 했으니까  
	
	js
	
	결과값이 true이면 ~~님의 아이디는 ~~입니다. 하고 알려준다.
	하고 로그인창으로 보내면 좀 그렇겠지? 알아서 로그인하라고 해
	
	
						
	비밀번호 찾기	
	수업시간에는 난수로 임시비밀번호를 발급받았는데
	그 난수로 이제 계속 로그인을 할 생각하니
	사용자입장에서는 그닥 좋지 않은 방법일듯..비번을 메모장에 들고다닐수도 없고..
	
	난수 생성해서 비번받고 로그인해서 새로운 비번받는 사이트도있지만	
	싫어..그냥 새로운 비밀번호입력 받고 확인한번하고 비번바뀌는걸로 하자...
	
	비밀번호는 아이디와 이름 이메일을 입력받는다.
	비빌번호를 알려주는 거니 조금 깐깐하게 해도 된다고 생각한다 아닌가?
	이것도 각각의 입력마다 이상한게 들어가면 안되니까? 정규표현식을 써야한다..점점 많아지네
	아니 곰곰히 생각해보면 변경하는게 아니니까 정규표현식 패스 다시 비밀번호 작성 할 떄 ㄱㄱ
	
	js
	
	documentquerySelect를 사용해서 각각의 변수에 맞게 저장한다.	
	아이디는 input이 하나니까 괜춘
	전화번호는 input이 3개니까 또 묶어
	이메일도..묶어..
	객체로 묶어버린다 컴퓨터는 묶는거 좋아한다고 했어
	ajax로 하면 data보낼때 ob_id : ob_id ..그냥 묶자	
	
	type 또 post가자
	
	서블릿이랑 또 통신확인하고
	
	   
	
	
	ajax를 또 사용한다
	
	url은 비밀번호 찾기니까 /member/findpassword
	
	각각의 자료형에 맞게 저장해준다 아이디, 전화번호 이메일
	0
	또 result 를 미리 작성한다 
	
	
	dao
	
	일단 모두 일치한다, 아이디가 일치하지 않는다 비번호가 일치하지 않는다 전화번호가 일치하지 않는다
	모두 일치하지 않는다 경우의수가 많으므로 int 하자
	
	
	1. 모두 일치 아이디 O 이메일 O 이름 O 확인완료
	2. 아이디 O 이름 X 이메일 O 확인완료
	3. 아이디 O 이름 X 이메일 X 확인완료
	4. db 오류 확인완료
	0. 아이디 X 이름 X 이메일 X->회원이 아니다 확인완료 									
	
	너무 꼼꼼하게 받는건가...이게 맞는방법인건가?
	js 
	
	결과값에 따라 alert로 알려준다
	
	만약에 결과값이 0이면 비밀번호 입력하는 창으로 날려버린다
	
	
	새로운 비밀번호와 확인
	이것도 정규표현식.........ㅎ
	
	
	
	또 ajax 사용해서 두개의 비밀번호를 날려야 하는데
	
	엄...
	
	일단은 두개의 비밀번호가 일치하는지 하지 않는지 판단을 해야한다
	두개의 비밀번호가 일치하면
	그때 바꿔줘야하는데 음....dao를 찍고 와야 하나 아니면 js에서 판단을 할 수 있나
	어렵다 ㅠㅠ
	
	일단 두개의 비밀번호가 일치하면 성공 아니면 다시 입력해 달라고 하자...ㅎ
		
	음..이건 어떻게 보면 비밀번호를 수정하는 것이니까 update인가?
	
	
	
	
	
	
	
	
										
																		
												
							
				
		
	
	
	
	 
	입력한 값들이 모두 일치한다 일치하지 않는다 
	
	
	
		
	
	이 세가지가 일치하면
	일단 ajax로 아이디와 전화번호와 이메일의 값을 가지고 넘어가서 
	
	난수말고 새로운 비밀번호를 변경할 수 있도록  난수 할때마다 또 변경하려니 아찔함..
	새로운비밀번호와 비밀번호 확인한번 더 확인하고 일치하면
	
	여기에도 아무거나(?)입력을 하면 안되니까 정규표현식 넣기!
	비밀번호 변경 성공!
 -->