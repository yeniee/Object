
//alert("find.js")

//전화번호 입력시 focus가 자동으로 넘어가는 script
function phone_focus() {

	let ob_phone_1 = document.querySelector("#ob_phone_1").value;
	let ob_phone_2 = document.querySelector("#ob_phone_2").value;
	let ob_phone_3 = document.querySelector("#ob_phone_3").value;

	//console.log(ob_phone_1)
	//console.log(ob_phone_2)
	//console.log(ob_phone_3)

	if (ob_phone_1.length == 3) {// 만약에 핸드폰 첫번째 입력값이 3자리를 넘어가면
		document.querySelector("#ob_phone_2").focus(); // 다음으로 넘어감
	}

	if (ob_phone_2.length == 4) {
		document.querySelector("#ob_phone_3").focus();
	}

	if (ob_phone_3.length == 4) { 
		/* 여기도 입력값이 4를 넘으면 그만 받고 싶어요*/ 
		document.querySelector(".findid").focus();
	}


	let ob_phone = ob_phone_1 + '-' + ob_phone_2 + '-' + ob_phone_3;

	//console.log(ob_phone)
}

// 버튼 클릭 시 함수 실행
function findid() {
	// 객체 선언
	let data = {
		ob_name: document.querySelector("#ob_name").value,
		ob_phone: document.querySelector("#ob_phone_1").value + '-' + document.querySelector("#ob_phone_2").value + '-' + document.querySelector("#ob_phone_3").value
	}

	console.log(data)
	console.log(ob_name.value); // 비어있죠
	//둘 중 하나라도 null이면 입력alert
	// 모두 입력을 하고 난 뒤에 결과 값을 알려주고 싶어요.
	
	console.log( data.ob_name ) // if에서 검사가 제대로 안될때는 if 조건에 들어가 있는 변수를 출력해서 확인해보시면 됩니다.
	
	// console에 아무것도 안나오면 공백 이고요 만일 정의가 되지않을때는 undefined 라고 나옵니다.
		// 문제 있을까요??? 아니요..
		// 2질문에서 더 질문있을까요?? 아니요 없습니다..
	// 문제점 : ob_name 가 누구죠???????  태그를 가져오셔야 합니다.
	//만약에 name값이 null 이면
	if(data.ob_name == '' ){		// == 값 비교 === 값 과 자료형 비교 
		alert("이름을 입력해 주세요."); return;
	}
	//만약에 전화번호가 null이면
	// 전화번호
	if( document.querySelector("#ob_phone_1").value == ''){
		alert("전화번호 앞자리 입력해 주세요."); return;
	}
	if( document.querySelector("#ob_phone_2").value == ''){
		alert("전화번호 가운데자리 입력해 주세요."); return;
	}
	
	if( document.querySelector("#ob_phone_3").value == ''){
		alert("전화번호 뒷자리 입력해 주세요."); return;
	}
	
	//서블릿과 통신하기

	$.ajax({
		url: "/Object/member/findid",
		type: "post",
		data: data,
		success: function(re) {
			alert(re)			
						 // 문제 있을까요?? 아니요 없는 것 같아요!
						 // 네 잘하셧어요!!!! 1번 질문은 끝인가요? 넵
			let findbox = document.querySelector(".findbox");		
			let response =''; 
			if (re == "0") { //둘다 틀리게 입력했는데도 이름이 일치하지 않는다고 나옵니다..
				response = '일치하는 정보가 없습니다.' 
				findbox.innerHTML = response;
				return;
			}						
			
			else if (re == "2") {// 나는 전화번호 맞게 입력했는데?
				response = '전화번호가 일치하지 않습니다.' 
				findbox.innerHTML = response;
			}

			else if (re == "3") { // 통과
				response = '이름이 일치하지 않습니다'
				findbox.innerHTML = response;
				return;
			}
			
			else if (re == "4") { // 제발 얘의 결과값은 안받고 싶다.
				response = 'DB 오류 관리자에게 문의 주세요.'
				findbox.innerHTML = response;
				return;
			}
						
			else {
				//alert("둘다일치합니다") // 제발 나와줄래....? 내가 뭘 잘못했니.......
				response = '회원님의 아이디는 ' + re + '입니다' 
				findbox.innerHTML = response;
			}
		}
	})

}	






