
/*전역변수 */
let col3 = document.querySelectorAll(".col3")

//수정이 가능한 이름과, 전화번호, 이메일, 주소만 수정이 가능함 아이디나 회원번호나 포인트는 수정이 불가능하니까..
getmemger()
function getmemger(){
	//회원정보 호출
	$.ajax({
		url:"/Object/member/mypage", //너는 왜 또 서블릿이랑 통신이 안되니? 서블릿만들고 내가 복사헀는데?ㅜ
		type:"get",
		success : function(re){ 
			//console.log(re)
		let member = JSON.parse(re)//통신된 json 문자타입을 json타입으로 형변환
			//console.log("mypage.js 확인")
			//console.log(member)		
			document.querySelector(".ob_num").innerHTML = member.ob_num //왜 너는 또 찾지를 못하니?
			document.querySelector(".ob_id").innerHTML = member.ob_id
			document.querySelector(".ob_name").value = member.ob_name
			
			
			/*전화번로 자르기 */			
//			document.querySelector(".ob_phone_1").value = member.ob_phone.split("-")[0]
			document.querySelector(".ob_phone_2").value = member.ob_phone.split("-")[1]
			document.querySelector(".ob_phone_3").value = member.ob_phone.split("-")[2]
			
			/*이메일 자르기*/
			document.querySelector(".ob_email1").value = member.ob_email.split("@")[0]
			document.querySelector(".ob_email2").value = member.ob_email.split("@")[1]
			
			document.querySelector(".ob_signup_date").innerHTML = member.ob_signup_date
			
			/*주소자르기*/
			document.querySelector(".sample4_postcode").value = member.ob_address.split(",")[0]
			document.querySelector(".sample4_roadAddress").value = member.ob_address.split(",")[1]
			document.querySelector(".sample4_jibunAddress").value = member.ob_address.split(",")[2]
			document.querySelector(".sample4_detailAddress").value = member.ob_address.split(",")[3]
						
			/*포인트*/
			document.querySelector(".ob_point").innerHTML = member.ob_point	
		
		}
	})
}


/*회원정보 수정하기 유효성검사 */

/*--------------이름--------------*/
function check1(){	  
	let ob_name = document.querySelector("#ob_name").value;/*변수*/
	//console.log(ob_name)
	let obcheck1 = /^[a-zA-Z가-힣]{2,20}$/
	if(obcheck1.test(ob_name)){col3[0].innerHTML=""}
	else{col3[0].innerHTML='영어 소문자,대문자 혹은 한글2~20글자 조합';}
}

/*--------------전화번호--------------*/
function check2(){
	let ob_phone_1 = document.querySelector("#ob_phone_1").value;
	let ob_phone_2 = document.querySelector("#ob_phone_2").value;
	let ob_phone_3 = document.querySelector("#ob_phone_3").value;
	
	console.log(ob_phone_1)
	//console.log(ob_phone_1.length);
	console.log(ob_phone_2)
	//console.log(ob_phone_2.length);
	console.log(ob_phone_3)
	//console.log(ob_phone_3.length);
	//3개의 번호를 하나로 합치기
	let ob_phone = ob_phone_1+ob_phone_2+ob_phone_3;
	
	console.log(ob_phone)
	//정규표현식 0부터9까지 2~3자리 까지입력/ 0-9까지 3자리 또는 4자리까지 입력
	let obcheck2 = /^([0-9]{2,3})([0-9]{3,4})([0-9]{3,4})$/
	if(obcheck2.test(ob_phone)){col3[1].innerHTML=""}
	else{col3[1].innerHTML="형식대로 입력해주세요"}
}

/*--------------이메일--------------*/
function check3(){
	// 이메일은 체크해야하는건가 이미 존재하는 이메일인지? 그럼 또 가야하는건가? 왜 사서 고생
	let ob_email_1 = document.querySelector("#ob_email_1").value;
	let ob_email_2 = document.querySelector("#ob_email_2").value;
	
		console.log(ob_email_1)
		console.log(ob_email_2)	
	let ob_email = ob_email_1+"@"+ob_email_2;
	//이메일 정규표현식
	let obcheck3 = /^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9]+$/;	
		console.log(ob_email)
	//이메일 중복체크 및 유효성 검사	
	if(obcheck3.test(ob_email)){
		$.ajax({
			url: "/Object/member/emailcheck",
			data: {"ob_email":ob_email},
			type:"post",			
			success : function(re){ 
				if( re === "true" ){col3[2].innerHTML='사용중인 이메일 입니다.';return;}
				else{col3[2].innerHTML=""}
			}
		})			
	}
	else{col3[2].innerHTML="이메일 형식대로 입력해 주세요."}
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
	check3();		//이메일 유효성 검사 실행
})


/*--------------주소--------------*/
function addresscheck( value ){ //입력한 value값	
	console.log("signup.js value 확인 : ")
	console.log(value)
	let input = value.currentTarget.value;
	if( input.indexOf(',') !== -1 ){ col3[3].innerHTML = ' 주소에 ,[쉼표] 입력 불가능'; }
	else{ col3[3].innerHTML = ''; } 	
}


sample4_postcode.addEventListener( 'change' ,  addresscheck )	// change 된 객체의 정보를 addresscheck함수에게 인수로 전달
sample4_roadAddress.addEventListener( 'change' ,  addresscheck )
sample4_jibunAddress.addEventListener( 'change' ,  addresscheck )
sample4_detailAddress.addEventListener( 'change' ,  addresscheck )
    
let ob_address = sample4_postcode+sample4_roadAddress+sample4_jibunAddress+sample4_detailAddress;
//console.log(ob_address) 





function updateinfor(){
	for(i=0; i<=3; i++){
		console.log(col3[i])
		if(col3[i].innerHTML!==""){
			alert("알맞게 입력을 했는지 확인해 주세요"); return;
		}else{
			mupinfor();
		}
	}	
}







// 회원정보 수정하기
function mupinfor(){
	alert("수정하기")		
	//객체로 묶어서 가져오기	
	let data = {
		ob_name : document.querySelector("#ob_name").value,
		ob_phone : document.querySelector("#ob_phone_1").value +'-'+ document.querySelector("#ob_phone_2").value +'-'+ document.querySelector("#ob_phone_3").value, // ! 
		ob_email : document.querySelector("#ob_email_1").value +'@'+ document.querySelector("#ob_email_2").value, // ! 
		ob_address : document.querySelector("#sample4_postcode").value+","+document.querySelector("#sample4_roadAddress").value+","+document.querySelector("#sample4_jibunAddress").value+","+document.querySelector("#sample4_detailAddress").value
	}

	console.log(data)

	$.ajax({
		url: "/Object/member/updateinfor",
		type:"post",
		data:data,		
		success : function(re){ 
			alert(re)
			if(re=="true"){alert("회원수정이 완료되었습니다")}
			else{alert("회원수정 실패")}
			}
	})
    
}//mupinforend



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
성공성공 진짜 눈에 너무 거슬려서 보기가 싫음..
공백으로 못바꾸나?
 */
