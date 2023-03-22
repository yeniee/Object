<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지 jsp</title>
	<link rel="stylesheet" href="/Object/css/css.css">
	<link rel="stylesheet" href="/Object/css/member/signup.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&family=Poiret+One&family=Quicksand:wght@300;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<style>

</style>
</head>
<body>

	<%@include file = "../header.jsp" %> 		<!--  헤더 파일 가져오기 -->

	<div id="wrap">
	
		<div class="sign_up">
			<h3>회원가입</h3>

			<table class="signup_section">
				<tr>
					<td class="col1">
						<span class="text">아이디</span>
					</td> 
					<td class="col2">
						<input type="text" id="ob_id" name="ob_id" onkeyup="check1()">
					</td>
					<td class="col3">
						<span class="check"></span>
					</td>
				</tr>
				<tr>
					<td class="col1">
						<span class="text">비밀번호</span>
					</td>
					<td class="col2">
						<input type="password" id="ob_password" name="ob_password" onkeyup="check2()">
					</td>
					<td rowspan="2" class="col3">
						<span class="check"></span>
					</td>
				</tr>
				<tr>
					<td class="col1">
						<span class="text">비밀번호 확인</span>
					</td>
					<td class="col2">
						<input type="password" id="ob_password_check" name="ob_password_check" onkeyup="check3()">
					</td>					
				</tr>
				<tr>
					<td class="col1">
						<span class="text">이름</span>
					</td>
					<td class="col2">
						<input type="text" id="ob_name" name="ob_name" onkeyup="check4()">
					</td>
					<td class="col3">
						<span class="check"></span>
					</td>
				</tr>
				<tr>
					<td class="col1">
						<span class="text">전화번호 ('-' 제외)</span>
					</td>
					<td class="col2">
						<input type="text" id="ob_phone_1" class="ob_phone" name="ob_phone" onkeyup="check5()">
						<span class="hyphen">-</span>
						<input type="text" id="ob_phone_2" class="ob_phone" name="ob_phone" onkeyup="check5()">
						<span class="hyphen">-</span>
						<input type="text" id="ob_phone_3" class="ob_phone" name="ob_phone" onkeyup="check5()">
					</td>
					<td class="col3"><span class="check"></span></td>
				</tr>

				
				
				
				<tr>
					<td class="col1">
						<span class="text">이메일</span>
					</td>
					<td class="col2">
						<input type="text" id="ob_email_1" name="ob_email" onkeyup="check6()">						
						<span class="sms">@</span>
						<input type="text" id="ob_email_2" name="ob_email"  readonly="readonly" onkeyup="check6()">
						
						<select id="change_email" name="ob_email" >
							<option value="none">선택하세요</option>
							<option value="self">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="kakao.com">kakao.com</option>							
						</select>					
					</td>
					<td class="col3">
						<span class="check"></span>
					</td>					
				</tr>

				<tr>
					<td rowspan="2" class="col1" >주소</td>
					<td colspan="2" class="col2"> 
						<span class="adderess_span">
							<input type="text" id="sample4_postcode" class="bordernone" placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						</span>						
						
						<span class="adderess_span">	
							<input type="text" id="sample4_roadAddress" class="bordernone" placeholder="도로명주소">
							<input type="text" id="sample4_jibunAddress" class="bordernone" placeholder="지번주소">
						</span>							
						<span id="guide" style="color:#999;display:none"></span>						
					</td>
				</tr>
				<tr>
					<td class="col2">
						<span class="adderess_span">	 
							<input type="text" id="sample4_detailAddress" placeholder="상세주소">
						</span>
					</td>
					<td class="col3"> </td>
				</tr>
				
				
			</table><!-- signup_section -->

			<h3>이용약관</h3>
			<div class="agree_section">
				<div class="agree_div">
					<span>[필수] 이용약관 동의</span>
					<textarea readonly="readonly" class="agreetextarea"></textarea>
					<label><input type="checkbox" name="terms_agree"
						value="agree" id="confirm1"> 동의함</label>
				</div>
				<div class="agree_div">
					<span>[필수] 개인정보 이용약관동의</span>
					<textarea readonly="readonly" class="agreetextarea"></textarea>
					<label><input type="checkbox" name="infor_agree"
						value="agree" id="confirm2"> 동의함</label>
				</div>
				<div class="agree_div">
					<span>[선택] 쇼핑정보 수신 동의</span> 
					<textarea readonly="readonly" class="agreetextarea"></textarea>
					<label>
						<input type="checkbox" name="shopping_agree" value="agree" id="confirm3">
						동의함</label>
				</div>
			</div><!-- agree_section -->
			<button type="reset">취소하기</button>
			<button type="button" onclick="ob_signup()">회원가입하기</button>

		</div><!-- sign_up -->



	</div><!-- wrap -->

	<%@include file = "../footer.jsp" %>		<!--  푸터 파일 가져오기 -->




	<!-- 카카오API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- jquery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- 사용자 js -->
	<script type="text/javascript" src="/Object/js/member/signup.js"></script>

</body>
</html>