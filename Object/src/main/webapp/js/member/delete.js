//alert("d")

//탈퇴하기
function mdelete(){
	//alert("클릭?")
	let data = {
		ob_id : document.querySelector(".ob_id").value,
		ob_password : document.querySelector(".ob_password").value
	}
	console.log(data)
	
	$.ajax({
		url: "/Object/member/deleteinfor",
		type:"post",
		data:data,
		success : function(re){ 
			//alert(re)			
			if(re=="true"){alert("회원탈퇴가 완료 되었습니다. 이용해 주셔서 감사합니다"); location.href="/Object/index.jsp"}
			else{alert("회원정보가 일치하지 않습니다. 다시 확인해 주세요.")}			
		}
	})

}