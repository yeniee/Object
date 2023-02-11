

//0. 이미지미리보기
	//1. 변수가져오기	
	let ob_pimg = document.querySelector(".ob_pimg")
	console.log(ob_pimg)
	//변경이 될때마다 이벤트가 발생함
	ob_pimg.addEventListener('change' , function(e){
		//자바스크립트에서 지원하는 파일 클래스가 있음
		//FileReader 파일을 읽어옴
		//객체를 생성함
		let file = new FileReader()
			console.log(file)	//확인	
			console.log(e) // 이밴트 객체
			console.log(e.target) // 이벤트를 발생시킨 태그
			console.log(e.target.files[0])//해당태그의 등록된 파일 호출
		//해당 첨부된 파일 경로 알기[.readAsDataURL(파일)]
		let path = file.readAsDataURL(e.target.files[0])
			console.log(path)
		//이미지 특정 태그에 첨부된 이미지 대입 src있는 속성만 가능하다.
		file.onload = function(e){
			document.querySelector("#ob_pimg").src= e.target.result
		}		
	})	


//1. 카테고리 등록하기
function setcategory(){
	//alert("등록")
	let ob_pcname = document.querySelector(".ob_pcname").value
	//console.log(ob_pcname)	
	$.ajax({
		url:"/Object/admin/register",
		type:"post",
		data:{"ob_pcname":ob_pcname},
		success : function(re){
				//alert(re)
				if(re=="true"){alert("카테고리 등록이 완료되었습니다.");getcategorylist()}
				else{alert("카테고리 등록 실패")}			
			}		
	})
}

getcategorylist()
/*2. 모든 카테고리 출력하기 */
function getcategorylist(){
	$.ajax({
		url:"/Object/admin/register",
		type:"get",		
		success : function(re){ 
			//alert(re)//통신확인
			let list = JSON.parse(re) // json으로 변환한 리스트들을 list에 저장한다
			//console.log("2. 카테고리 출력하기 list 확인하기 ")
			//console.log(list)//console.log로 들어왔는지 확인한다.
			let categorylist=''//출력할 카테고리 리스트를 담을 깡통
			for(i=0; i<list.length; i++){//for문을 사용한다 일단 기본에 충실하자.
				//console.log(i)
				let category = list[i];//편하게 다시 변수로 저장하기
					//console.log(category)
					categorylist += '<input type="radio" name="ob_pcno" value='+category.ob_pcno+'> '+category.ob_pcname+'  '				
					//"<button type='button' name='ob_pcno' value="+category.ob_pcno+" > "+category.ob_pcname+" </button>"			
					//console.log(categorylist)								
				}//for end
				document.querySelector(".categorylist").innerHTML = categorylist // .categorylist에 뿌린다.
		}
	})	
}

//3.카테고리 수정하기




//3. 제품등록하기
function setproduct(){
	alert("클릭?")		
	let form = document.querySelector(".productform")//1.form에 있는 것을 전부 가져온다
	console.log(form)//확인한다!
	console.log(form.ob_pname.value); // 제품이름
	console.log(form.ob_pprice.value); // 제품가격
	console.log(form.ob_pimg.value); //제품이미지
	console.log(form.ob_pcomment.value); //제품설명
	//카테고리번호호오오옹오오오오~~~~~~~~~~~~~~~~~~~왜 못가져오는거니!!!!!!!!
	console.log(form.ob_pcno); //얘를 어떻게 가져오지?; 응 내가 가져왔다아아아 name에 pcno로 변경하니까 된다아아아@
	
	let formdata = new FormData( form ) //자바스크립트 내에서 지원해 주는 클래스	//얘 왜 못찾는거임?	
	console.log(formdata)//객체화 된  form 의 정보 form의 정보를 얻을 수 있음	
	
	//formdata 확인하기! 그냥 확인용 뭐가 들었나 궁금해서 검색해서 찾아 봄..
	/*
	for( let value of formdata.values() ){
		console.log(value)
	}
	*/
	
	$.ajax({ // 통신은 되는데 data랑 type을 작성하면 500번이 뜸...왜?아왜에에ㅜㅜㅜㅜ아까는 잘 했잖아...null값이라도 나왔잖아ㅜㅜㅜㅜ왜왜왜
	    url :"/Object/admin/product" , 
	    data : formdata,
	    type : "post",
	    contentType : false,//전송할 data의 타입
	    processData : false,//전송시 사용되는 타입
	    success: function( re ){ alert(re)} // 올린시간만 db에 저장됨..;
	})		
}

