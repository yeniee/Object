let col3 = document.querySelectorAll(".col3")

/*--------------아이디--------------*/
function check1(){
	let ob_id = document.querySelector("#ob_id").value;	
	//console.log(ob_id);
	let obcheck1 = /^[a-z0-9]{5,20}$/	
	if(obcheck1.test(ob_id)){
		$.ajax({//정규표현식이 동일하면
				url: "/Object/member/idcheck",//아이디 중복체크
				data:{"ob_id":ob_id},
				type:"post",
				success : function(re){ 
					if(re==='true'){ col3[0].innerHTML='사용중인 아이디입니다.';}
					else{col3[0].innerHTML='성공'; }					
				}
		})//ajax
	}else{col3[0].innerHTML="소문자,숫자조합 5~20글자 패턴"}	
}//check1 end
/*--------------비밀번호--------------*/
function check2(){
	let ob_password = document.querySelector("#ob_password").value;
	let obcheck2 = /^[a-zA-Z0-9]{8,20}$/ 
	if(obcheck2.test(ob_password)){
		col3[1].innerHTML='성공';
		check3();
		}else{
		col3[1].innerHTML='소문자,대문자,숫자조합 8~20';
		}	
}
/*--------------비밀번호확인--------------*/
function check3(){
	let ob_password = document.querySelector("#ob_password").value;
	let ob_password_check = document.querySelector("#ob_password_check").value;
	let obcheck3 = /^[a-zA-Z0-9]{8,20}$/ 
	if(!obcheck3.test(ob_password_check)){col3[1].innerHTML='소문자,대문자,숫자조합 8~20글자';}//입력받은 비밀번호와 정규표현식의 비밀번호가 다르면
	else if(ob_password_check!=ob_password){col3[1].innerHTML='비밀번호가 서로 다릅니다.';} //두 비밀번호가 다르면
	else{col3[1].innerHTML='성공'; check2()}//정규표현식과 두 비밀번호가 맞으면
}
/*--------------이름--------------*/
function check4(){
	let ob_name = document.querySelector("#ob_name").value;
	let obcheck4 = /^[a-zA-Z가-힣]{2,20}$/
	if(obcheck4.test(ob_name)){col3[2].innerHTML='성공';}
	else{col3[2].innerHTML='영어 소문자,대문자 혹은 한글2~20글자 조합';}
}

/*--------------전화번호--------------*/
function check5(){
	let ob_phone_1 = document.querySelector("#ob_phone_1").value;
	let ob_phone_2 = document.querySelector("#ob_phone_2").value;
	let ob_phone_3 = document.querySelector("#ob_phone_3").value;
	
	if( ob_phone_1.length == 3 ){
		document.querySelector("#ob_phone_2").focus()
	}
		
	if( ob_phone_2.length == 4 ){
		document.querySelector("#ob_phone_3").focus()
	}
	//test
	//console.log(ob_phone_1);
	//console.log(ob_phone_1.length);
	//console.log(ob_phone_2);
	//console.log(ob_phone_2.length);
	//console.log(ob_phone_3);
	//console.log(ob_phone_3.length);
	let ob_phone = ob_phone_1+ob_phone_2+ob_phone_3
	//console.log("phonenumber  확인 : ")
	//console.log(phonenumber)
	let obcheck5 = /^([0-9]{2,3})([0-9]{3,4})([0-9]{3,4})$/
	if(obcheck5.test(ob_phone)){col3[3].innerHTML='성공';}
	else{col3[3].innerHTML='형식대로 입력해 주세요.';}
}




function check6() {
	let ob_email_1 = document.querySelector("#ob_email_1").value;
	let ob_email_2 = document.querySelector("#ob_email_2").value;
	//let change_email = document.querySelector("#change_email").value;
	//console.log(ob_email_1)
	//console.log(ob_email_2)
	//console.log(change_email)	
	let ob_email = ob_email_1 +'@'+ ob_email_2
	//console.log("ob_email 확인")
	//console.log(ob_email);	
	let obcheck6 = /^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9]+$/;
	if(obcheck6.test(ob_email)){
		//이메일 중복체크
		$.ajax({
			url:"/Object/member/emailcheck",
			data:{"ob_email":ob_email},
			type:"post",	
			success:function(re){
				if(re==="true"){col3[4].innerHTML='사용중인 이메일 입니다.';return;}
				else{col3[4].innerHTML="성공"}
			}		
		})	
		
	}
	else{col3[4].innerHTML='이메일 형식으로 입력해 주세요.';}
}


//input 도메인 입력칸
let change_email = document.querySelector("#change_email") //도메인 주소를 입력받는 id를 가져와서 변수에 저장한다.
change_email.addEventListener("change" , e =>{	//change 될 때마다 변경이 되는 메소드 선언
	let type =  e.currentTarget.value	//클릭되는 값을 type에 변수로 저장한다
	document.querySelector('#ob_email_2').readOnly = true;	
	if( type == 'none' ){ return; } // 만약에 '선택하세요'를 클릭하면 다시 return 
	else if( type == 'self' ) {  // 만약에 '직접입력'을 누르면 
		document.querySelector('#ob_email_2').value = ""; // 입력칸을 공백으로 만든다 다시 입력을 받아야 하니까..
		document.querySelector('#ob_email_2').readOnly = false;// 입력을 다 하면 false로 다시 선언
	}else{
		document.querySelector('#ob_email_2').value = type; //그렇지 않으면 입력된 값을 type에 저장한다
	}	
	check6();		//check6() 함수 실행
})


let sample4_postcode =  document.querySelector("#sample4_postcode")
let sample4_roadAddress =  document.querySelector("#sample4_roadAddress")
let sample4_jibunAddress =  document.querySelector("#sample4_jibunAddress")
let sample4_detailAddress =  document.querySelector("#sample4_detailAddress")

//console.log(sample4_postcode)
//console.log(sample4_roadAddress)
//console.log(sample4_jibunAddress)
//console.log(sample4_detailAddress)


function addresscheck( value ){ //입력한 value값	
	console.log("signup.js value 확인 : ")
	console.log(value)
	let input = value.currentTarget.value;
	if( input.indexOf(',') !== -1 ){ col3[5].innerHTML = ' 주소에 ,[쉼표] 입력 불가능'; }
	else{ col3[5].innerHTML = '성공'; } 	
}


/*주소*/

sample4_postcode.addEventListener( 'change' ,  addresscheck )	// change 된 객체의 정보를 addresscheck함수에게 인수로 전달
sample4_roadAddress.addEventListener( 'change' ,  addresscheck )
sample4_jibunAddress.addEventListener( 'change' ,  addresscheck )
sample4_detailAddress.addEventListener( 'change' ,  addresscheck )
    
let ob_address = sample4_postcode+sample4_roadAddress+sample4_jibunAddress+sample4_detailAddress;
//console.log(ob_address)    
    //test
/*--------------회원가입정보확인--------------*/
//console.log("signup.js ob_address")
//console.log(ob_address);

function ob_signup() {

	for(let i=0; i<=5; i++){ 
		console.log(col3[i].innerHTML )
		if(col3[i].innerHTML !=='성공'){ 
			alert("입력이 안된 정보가 있습니다."); return false;
		}//for end
	}	

		if(document.querySelector("#confirm1").checked == false){
			//tag.객체명.checked -> : 체크가 되었으면 true 없으면 false;
			alert("이용악관에 동의해주세요"); return false;
		}
		
		if(document.querySelector("#confirm2").checked== false){ // ! 
			alert("개인정보 수집 동의에 동의해주세요"); return false;
		}

	let signupInfo = {
		ob_id : document.querySelector("#ob_id").value,
		ob_password : document.querySelector("#ob_password").value,
		ob_name : document.querySelector("#ob_name").value,
		ob_phone : document.querySelector("#ob_phone_1").value +'-'+ document.querySelector("#ob_phone_2").value +'-'+ document.querySelector("#ob_phone_3").value, // ! 
		ob_email : document.querySelector("#ob_email_1").value +'@'+ document.querySelector("#ob_email_2").value, // ! 
		ob_address : document.querySelector("#sample4_postcode").value+","+document.querySelector("#sample4_roadAddress").value+","+document.querySelector("#sample4_jibunAddress").value+","+document.querySelector("#sample4_detailAddress").value, //! 
		ob_shop_infor :document.querySelector("#confirm3").checked // ! 
	}	
	console.log(signupInfo)
			
	$.ajax({
		url: "/Object/member/signup",
		type: "POST",
		data:signupInfo,				
		success : function(re){ 	
			console.log(re)				
			if(re==='true'){alert("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.");location.href="login.jsp";}	
			else{alert("로그인실패")}
		}
	})	
	
}//ob_signup end



/* 카카오 우편 api */
   //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            
      
            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}
/* 카카오 우편 api end */
/*

/^ 		: 정규표현식 시작
$/		: 정규표현식 끝
[]		: 문자열 패턴
[a-z]	: 소문자패턴
[A-Z]	: 대문자패턴
[가-힣]	: 한글패턴
+		: 앞에 있는 패턴이 한개이상 반복이 되거나
?		: 앞에 있는 패턴이 0개 또는 1개이상 반복 
*		: 앞에 있는 패턴 0개 반복
(?=.*[a-z]) : 최소 한개 이상의 소문자 영문
(?=.*[A-Z]) : 최소 한개 이상의 대문자 영문
(?=.*[0-9]) : 최소 한개 이상의 숫자자 영문
{최소길이, 최대길이}	:문자열길이패턴
정규표현식.test(데이터)	: 맞으면 true 틀리면 false
1. /^[a-z0-9]{5,20}$/		: 소문자,숫자조합 5~20글자 패턴
2. /^[a-zA-Z0-9]{8,20}$/ 	: 소문자,대문자,숫자조합 8~20 패턴
3. /^[a-zA-Z가-힣]{2,20}$/	: 소문자,대문자,한글조합 2~20 패턴
4. /^([0-9]{2,3})([0-9]{3,4})([0-9]{3,4})$/
5. /^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9]+$/

 */
