
//회원정보 호출
$.ajax({
	url: "/Object/member/mypage", //너는 왜 또 서블릿이랑 통신이 안되니? 서블릿만들고 내가 복사헀는데?ㅜ
	type:"get",
	success : function(re){ 		
		//alert(re)
		let member = JSON.parse(re)//통신된 json 문자타입을 json타입으로 형변환
		//console.log("mypage.js 확인")
		//console.log(member)		
		document.querySelector(".ob_num").innerHTML = member.ob_num //왜 너는 또 찾지를 못하니?
		document.querySelector(".ob_id").innerHTML = member.ob_id
		document.querySelector(".ob_name").innerHTML = member.ob_name
		document.querySelector(".ob_phone").innerHTML = member.ob_phone
		document.querySelector(".ob_email").innerHTML = member.ob_email
		document.querySelector(".ob_signup_date").innerHTML = member.ob_signup_date
		document.querySelector(".ob_address").innerHTML = member.ob_address
		document.querySelector(".ob_point").innerHTML = member.ob_point	
	}
})

