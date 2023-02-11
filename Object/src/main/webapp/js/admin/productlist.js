

//1. 모든 제품 출력하기
getproductlist();
function getproductlist(){	
	$.ajax({
		url: "/Object/admin/product",
		type:"get",		
		data:{"type" : 1,"option":"all"},//0.판매중인 제품만 가져오기
		success : function(re){ 
		alert(re)//1. 결과값이 잘 들어왔는지 확인한다.
					
		let list = JSON.parse(re)//2. json으로 형변환을 한다. // 2개이상 출력이 되지 않음..
			
			//console.log("list확인하기")
			//console.log(list)	//어제는 왜 안된거였어....??????....너 진짜....ㅠㅠ			
			let productlist = '<tr><th>번호</th><th>제품이름</th><th>제품가격</th><th>제품이미지</th><th>제품설명</th><th>제품상태</th><th>제품등록날짜</th><th>카테고리번호</th><th>비고</th></tr>';
			for(let i=0; i<list.length; i++){	//3. 형변환 된 리스트들을 하나씩 꺼낸다. 			
				let productbox = list[i];
				//console.log(productbox);
				productlist += //productlist 하나씩 넣는다. 
				'<tr>'+
					'<th>'+productbox.ob_pno+'</th>'+
					'<th>'+productbox.ob_pname+'</th>'+
					'<th>'+productbox.ob_pprice+'</th>'+
					'<th><img src="/Object/admin/pimg/'+productbox.ob_pimg +'" style="width:200px; height:140px;">'+'</th>'+
					'<th>'+productbox.ob_pcomment+'</th>'+
					'<th>'+productbox.ob_active+'</th>'+
					'<th>'+productbox.ob_pdatatime+'</th>'+
					'<th>'+productbox.ob_pcno+'</th>'+
					'<th><button type="" onClick="upproductbtn('+productbox.ob_pno+')">수정하기</button> <button type="button" onClick=deleteproduct('+productbox.ob_pno+')>삭제</button></th>'+
				'</tr>'
			console.log(productlist)			
			}//for end
			
			document.querySelector(".productlist").innerHTML=productlist
		
		}//success end
	})			
}//카테고리 출력 end
//<a href="/Object/admin/updateproduct.jsp" onClick="upproductbtn('+productbox.ob_pno+')" >수정하기</a>



//제품수정하기 
//일단 클릭한 번호의 제품번호 출력하기
function upproductbtn(ob_pno){
	//alert(ob_pno)	
	let updateform = //수정버튼 클릭시 나오
	'<div class="update_wrap">'+
		'<form class="updateform">'+			
			'<div> <span class="ob_text">제품번호 : </span><input class="ob_pno" name="ob_pno" readonly="readonly"></span></div>'+//제품번호 수정불가 readonly
			'<div> <span class="ob_text">제품이름 : </span><input type="text" name="ob_pname" class="ob_pname"></div>'+//제품이름
			'<div> <span class="ob_text">제품가격 : </span><input type="text" name="ob_pprice" class="ob_pprice"></div>'+//제품가격
			'<div> <span class="ob_text">제품이미지 : </span> <span id="ob_pimg"></span> <input type="file" name="ob_pimg" class="ob_pimg"></div>'+//제품이미지	
			'<div> <span class="ob_text">제품설명 : </span><input type="text" name="ob_pcomment" class="ob_pcomment"></div>'+//제품설명
			'<div> <span class="ob_text">제품상태 : </span>'+
					'<input type="radio" name="ob_active" class="ob_active" value="0"> 준비중'+
					'<input type="radio" name="ob_active" class="ob_active" value="1"> 판매중'+
					'<input type="radio" name="ob_active" class="ob_active" value="2"> 재고없음'+
				'</div>'+//제품상태
			'<div> <span class="ob_text">제품올린시간 : </span><span class="ob_pdatatime"></span></div>'+//제품올린시간
			'<div> <span class="ob_text">카테고리번호 : </span><span class="ob_pcno"></span></div>'+//카테고리번호
			'<div> <button type="button" onClick="updateproduct()">수정하기</button></div>'+//수정하기버튼
		'</form>'+
	'</div>'
	
	document.querySelector(".updatelist").innerHTML=updateform;
	
	
	$.ajax({
		url:"/Object/admin/product",
		data:{"type":2,"ob_pno":ob_pno},
		type:"get",
		success:function(re){
			//alert(re)
			let list = JSON.parse(re);
			//console.log(list)				
			document.querySelector(".ob_pno").value = list.ob_pno;
			document.querySelector(".ob_pname").value = list.ob_pname;
			document.querySelector(".ob_pprice").value = list.ob_pprice;
			document.querySelector(".ob_pimg").innerHTML = list.ob_pimg; //input파일
			document.querySelector("#ob_pimg").innerHTML = '<img src="/Object/admin/pimg/'+list.ob_pimg+'" style="width:200px; height:140px;">' + list.ob_pimg//이미지보기
			document.querySelector(".ob_pcomment").value = list.ob_pcomment;
			document.querySelector(".ob_active").value = list.ob_active;
			document.querySelector(".ob_pdatatime").innerHTML = list.ob_pdatatime;
			document.querySelector(".ob_pcno").innerHTML = list.ob_pcno;				
			}//success end		
	})//ajax end	
}//upproductbtn end


//진짜 수정버튼 클릭시 
function updateproduct(){
	//alert("ddd")
	let form = document.querySelector(".updateform")

	let formimg = document.querySelector(".updateform.ob_img");//새로수정하는 이미지파일
	console.log(form)

	console.log(formimg) 	
	
	let formdata = new FormData(form);	
	console.log(formdata)		
	$.ajax({
		url:"/Object/admin/product",	
		type:"put",	
		data:formdata,
		contentType : false,//전송할 data의 타입
	    processData : false,//전송시 사용되는 타입
		success : function(re){ 
			alert(re)
			if(re=="true"){alert("수정이 완료되었습니다."); }
			else{alert("수정실패")}
		}
	})	
}


//제품 삭제하기
function deleteproduct(ob_pno){
	//alert(ob_pno)	
	$.ajax({
		url:"/Object/admin/deleteproduct",
		data:{"ob_pno":ob_pno},
		type:"post",
		success:function(re){
			//alert(re)
			if(re=="true"){alert("삭제되었습니다")}
			else{alert("삭제실패")}
			}
	})
	
}



