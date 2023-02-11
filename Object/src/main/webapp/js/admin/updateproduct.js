alert("dd")

/*
	$.ajax({
		url:"/Object/admin/product",
		data:{"type":2,"ob_pno":ob_pno},
		type:"get",
		success:function(re){
			//alert(re)
			let list = JSON.parse(re);
			console.log(list)				
			document.querySelector(".ob_pno").innerHTML = list.ob_pno;
			document.querySelector(".ob_pname").value = list.ob_pname;
			document.querySelector(".ob_pprice").value = list.ob_pprice;
			document.querySelector(".update_ob_pimg").innerHTML = list.update_ob_pimg; //input파일
			document.querySelector("#ob_pimg").innerHTML = '<img src="/Object/admin/pimg/'+list.ob_pimg+'">'//이미지보기
			document.querySelector(".ob_pcomment").value = list.ob_pcomment;
			document.querySelector(".ob_active").value = list.ob_active;
			document.querySelector(".ob_pdatatime").innerHTML = list.ob_pdatatime;
			document.querySelector(".ob_pcno").innerHTML = list.ob_pcno;				
			}//success end		
	})//ajax end	
	*/