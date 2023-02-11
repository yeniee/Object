//alert("dddd");


let check = document.querySelectorAll(".check");


function check1(){	
	let ob_password = document.querySelector(".ob_password").value; 
	//console.log(ob_password)
	
	let pscheck1 = /^[a-zA-Z0-9]{8,20}$/ 
	if(pscheck1.test(ob_password)){
		check[0].innerHTML = '성공';		
		check2();
	}else{
		check[0].innerHTML = '소문자,대문자,숫자조합 8~20';
	}	
}


function check2(){	
	let ob_password = document.querySelector(".ob_password").value; 
	let new_ob_password = document.querySelector(".new_ob_password").value;
	//console.log(new_ob_password)	
	let pscheck2 = /^[a-zA-Z0-9]{8,20}$/ 
	if(!pscheck2.test(new_ob_password)){check[0].innerHTML = '소문자,대문자,숫자조합 8~20';  return;}
	else if(ob_password!=new_ob_password){check[0].innerHTML = '비밀번호가 일치하지 않습니다.'; return;}
	else{check[0].innerHTML = '성공'; check1() ; }
}


function uppassword(){
	alert("클릭")
	
	if( check[0].innerHTML != "성공"){ return; }
	
	
	
let ob_num = sessionStorage.getItem("ob_num");//세션 가져오기

let data ={
	ob_password : document.querySelector(".ob_password").value,
	ob_num : ob_num //세션
}
	console.log(data)
	
	$.ajax({
		url: "/Object/member/changepassword",
		type:"post",
		data:data,
		success : function(result){ alert(result)}
	})

}




