<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Object/css/member/update.css">
</head>

<%@include file = "../header.jsp" %>

<% 
	//만약에 로그인을 하지 않았으면 로그인페이지로 보내버림
	if(loginid == null) { 
		%> <script>location.href = "login.jsp"; </script> <%
	}
%>

<body>
	<div id="wrap">
		<div class="update">
			<h3>회원수정</h3>

			<table class="table">
				<tr>	
					<td class="td1">회원번호</td>
					<td class="td2 ob_num"></td>			 
				</tr>			
			
				<tr>
					<td class="td1"><span>아이디</span></td> 
					<td class="td2 ob_id"></td>					
				</tr>			
				
				<tr>
					<td class="td1"><span>이름</span></td>
					<td class="td2">
						<input type="text" id="ob_name" name="ob_name" class="text_input ob_name" onkeyup="check1()">
					</td>
					<td class="col3"></td>				
				</tr>
				
				<tr>
					<td class="td1"><span>전화번호('-' 제외)</span></td>
					<td class="td2">
						<input type="text" id="ob_phone_1" name="ob_phone_1" class="phone_input ob_phone_1" onkeyup="check2()">
							<span class="hyphen">-</span>
						<input type="text" id="ob_phone_2" name="ob_phone_2" class="phone_input ob_phone_2" onkeyup="check2()">
							<span class="hyphen">-</span>
						<input type="text" id="ob_phone_3" name="ob_phone_3" class="phone_input ob_phone_3" onkeyup="check2()">
					</td>
					<td class="col3"></td>
				</tr>

				<tr>
					<td class="td1"><span>이메일</span></td>
					<td class="td2">
						<input type="text" id="ob_email_1" name="ob_email" class="text_input ob_email1" onkeyup="check3()">						
						<span class="sms">@</span>
						<input type="text" id="ob_email_2" name="ob_email"  readonly="readonly" class="text_input ob_email2" onkeyup="check3()">
						
						<select id="change_email" name="ob_email" >
							<opt ion value="none">선택하세요</option>
							<option value="self">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="kakao.com">kakao.com</option>							
						</select>					
					</td>
					<td class="col3"><span class="check"></span></td>					
				</tr>
				
				<tr>
					<td class="td1"><span>가입날자</span></td>
					<td class="td2 ob_signup_date"></td>
				</tr>


				<tr>
					<td rowspan="2" class="td1" >주소</td>
					<td colspan="2" class="td2"> 
						<div class="adddiv">
							<input type="text" id="sample4_postcode" placeholder="우편번호" class="sample4_postcode">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						</div>						
						
						<div class="adddiv">	
							<input type="text" id="sample4_roadAddress" placeholder="도로명주소" class="sample4_roadAddress">
							<input type="text" id="sample4_jibunAddress" placeholder="지번주소" class="sample4_jibunAddress">
							<input type="text" id="sample4_detailAddress" placeholder="상세주소" class="sample4_detailAddress">
						</div>	
						
						<span id="guide" style="color:#999;display:none"></span>						
						<!-- <input type="text" id="sample4_extraAddress" placeholder="참고항목"> -->
					</td>
					<td class="col3"> </td>	
				</tr>
				<tr>
					
								
				</tr>
				
				<tr>
					<td class="td1">포인트</td>
					<td class="td2 ob_point"></td>
				</tr>
				
			</table><!-- signup_section -->

		</div><!-- sign_up -->

	<div class="btn_section">
		<button type="button" onclick="mupinfor()" class="updatebtn">수정하기</button>		
	</div>

	</div><!-- wrap -->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="/Object/js/member/update.js"></script>
</body>
</html>