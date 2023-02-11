
function login(){

	let logininfo = {
		ob_id : document.querySelector("#ob_id").value,
		ob_password : document.querySelector("#ob_password").value
	}	

	//console.log(logininfo)
	
	$.ajax({
		url:"/Object/member/login",
		data:logininfo,
		type:"post",
		success : function(re){ 
			//alert(re)
			if(re=="1"){alert("로그인성공"); location.href="/Object/index.jsp";}
			else if(re=="2"){alert("비밀번호가 일치하지 않습니다.")}
			else if(re=="3"){alert("db오류 관리자에게 문의주세요.")}
			else{alert("로그인실패")}
			}
	})

}