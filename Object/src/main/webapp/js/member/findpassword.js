

let ob_num = 0; // 세션 전역변수

function findpassword() {	
	// 객체선언
	let data = {
		ob_id: document.querySelector("#ob_id").value,
		ob_name: document.querySelector("#ob_name").value,
		ob_email: document.querySelector("#ob_email_1").value + '@' + document.querySelector("#ob_email_2").value
	}
	console.log("findpassword data 확인 :  ")
	console.log(data)
	
	if(data.ob_id==''){
		alert("아이디를 입력해주세요.");return;
	}
	
	if(data.ob_name==''){
		alert("이름을 입력해주세요.");return;
	}
	
	if(data.ob_email==''){
		alert("이메일을 입력해주세요.");return;
	}
	
	
	
	$.ajax({
		url:"/Object/member/findpassword",
		type: "post",
		data: data,
		success: function(re) {
			//alert( re ) 	
			//console.log(re)	
			let findbox = document.querySelector(".findbox");	
			let response ='';
			//if(re=="0") { alert("통과"); location.href="/Object/member/changepassword.jsp"} //확인
			if(re=="-1"){ 
				response = "이메일이 올바르지 않습니다."		// 이메일 유효성		
				findbox.innerHTML = response; // 이메일 유효성 검사인데, 왜 이름이 틀렸다고 하죠? 설마 이메일이랑 이름이랑 반환값이 바뀌었나;;;
				} 
			else if(re=="-2"){ 
				alert("이름 틀림");
				response = "이름이 올바르지 않습니다." // 이름 유효성
				findbox.innerHTML = response; // 올바르게 입력해도 이름이 틀렸다고 합니다?
				} // 확인
			else if(re=="-3"){ 
				alert("아이디 틀림");
				response = "아이디가 올바르지 않습니다." // 잘 나옵니다.
				findbox.innerHTML = response; 
				} // 확인
			else if(re=="0"){
				alert ("일치하는 정보가 없습니다. 다시 확인해 주세요"); // 아무리 올바르게 입력해도 나오지 않습니다.
				response = "일치하는 정보가 없습니다. 다시 확인해 주세요."
				findbox.innerHTML = response; 
				 }
			else  {
					ob_num = re; // 다오에서 비밀번호 변경할 회원번호 반환함. //세션
					alert("통과"); location.href="/Object/member/changepassword.jsp"
					sessionStorage.setItem("ob_num", ob_num);	// 세션		 	
				} // 아이디 틀렸다고 함
			//?바르게 입력했는데 왜 일치하는 정보가 없다고 하지?ㅠ
			}
	})
}



 


// 이메일 주소 
let change_email = document.querySelector("#change_email")
//console.log(change_email)
change_email.addEventListener("change", e => {
	let type = e.currentTarget.value;
	console.log(type)
	document.querySelector("#ob_email_2").readOnly = true; //readOnly 활성화
	if (type == 'none') { return; } //만약에 '선택하세요'를 누르면 리턴 받을 이유없음
	else if (type == 'self') { // 직접입력을 선택하면		
		document.querySelector("#ob_email_2").value = " "; //입력칸을 공백으로 만들어 도메인을 입력할 수 있도록 만들기
		document.querySelector("#ob_email_2").readOnly = false; //받고 난 후 다시 입력칸 비활성화
	} else {
		document.querySelector("#ob_email_2").value = type;
	}
})


/*
세션 개어렵네

로그인을 했다, 안헀다 그 기록을 남기는 것인데
지금 상황에서는 아이디 비밀번호도 모르는 상황인데 어떻게 pk(ob_num)을 넘기는지 이해를 못하겠다.....

세션을 검색해 보니
세션(session)이란 웹 사이트의 여러 페이지에 걸쳐 사용되는 사용자 정보를 저장하는 방법을 의미합니다.
사용자가 브라우저를 닫아 서버와의 연결을 끝내는 시점까지를 세션이라고 합니다.
앞서 살펴본 쿠키는 클라이언트 측의 컴퓨터에 모든 데이터를 저장합니다.
하지만 세션은 서비스가 돌아가는 서버 측에 데이터를 저장하고, 세션의 키값만을 클라이언트 측에 남겨둡니다.
브라우저는 필요할 때마다 이 키값을 이용하여 서버에 저장된 데이터를 사용하게 됩니다.
이러한 세션은 보안에 취약한 쿠키를 보완해주는 역할을 하고 있습니다.

다른 사이트에 나오는 세션의 정의
세션이란 일정 시간동안 같은 사용자(정확하게 브라우저를 말한다)로 부터 들어오는
일련의 요구를 하나의 상태로 보고 그 상태를 일정하게 유지시키는 기술이라고 한다.
또한 여기서 일정 시간이란 방문자가 웹 브라우저를 통해 웹 서버에 접속한 시점으로부터 웹 브라우저를 종료함으로써 연결을 끝내는 시점을 말하며
즉, 방문자가 웹서버에 접속해 있는 상태를 하나의 단위로 보고 세션이라고 칭한다는 것.



로그인도 안했는데 어떻게 ob_num을 어떻게 알고  넘기는지 이해를 못하겠다........ㅎㅎㅎㅎ
차라리 난수로 임시비밀번호를 받고 새로운 비밀번호를 업데이트 하는 것이 나을까ㅎㅎㅎ

그럼 다시 생각을 해보자
난수로 임시 비밀번호를 받아서 로그인을 한다
그러면 난수가 아닌 새로운 비밀번호를 입력할 때
일단 난수로 입력받은 비밀번호를 입력하고 그러면 html 넘어갈 때 random으로 줘야하는 건가

그다음에 새로운 비밀번호를 입력받고  class .newpassword
또 한번 올바르게 입력했는지 받고	  class .newpasswordcheck
하고 비밀번호 수정을 클릭한다

js로 넘어가서 일단 모든 값이 잘 넘어왔는지 확인을 한다.

넘어왔으면 일단 새로운 비밀번호 유효성검사를 진행한다. (정규표현식) 얘는 클릭아니고 onkeyup으로 진행
새로 입력받은 비밀번호와 체크해서 일치하지 않으면 return을 시켜버리고

ob_passsword 로 변수를 받아서 ajax로 넘겨버린다.
임시비밀번호였던 random이랑
새로운 비밀번호인 ob_passsword랑
누가 비밀번호를 변경해서 수정했는지 확인이 필요하니 pk인 ob_num을 넘겨버린다


그냥 생각인데 이제 로그인을 해서 비밀번호를 받는거니까 이때 ob_num을 사용하면 
오류가 안날 것 같은데.........

서블릿과 통신을 한다

통신이 되었으면 넘어오 값들을 변수로 저장한다.


String ramdom이랑
String ob_password랑
int ob_num (얘는 형변환이 필요할 듯)
넘여서 다오 넘어간다.
처~음에 작업했던 7번 새로운 비밀번호 업데이트 조금만 수정해서 다오 작업해서 
결과값을 보내주고 보내주면 될 것 같다.... 되겠지? 안되면 안되는데...


changepassword.js











 */