$(function(){
//모바일 hamnav 클릭시 나타나는 script
/*mobile ham script*/
$("#mobie_ham").click(function(){
  $("#mobie_menu_wrap").css({marginLeft:0});
})//mobile ham script


$("#mobile_close").click(function(){
  $("#mobie_menu_wrap").css({marginLeft:-2000});
})


  /*mobile tab 1 script*/
 $(".mobile_tab_menu").click(function(){
  var index=$(this).index();
  $(".mobile_eq").hide();
  $("#mobile_tab_menu>div").removeClass("mobile_add")
  $(".mobile_eq").eq(index).show();
  $(this).addClass("mobile_add")
 })//mobile tab 1 script end

 /*mobile tab 2 script*/
 $(".mobile_bottom_tab").click(function(){
  var eq=$(this).index();  
  $(".mobile_bottom_eq_tab").hide();
  $("#mobile_bottom_tab_section>div").removeClass("mobile_add_2");
  $("#mobile_bottom_eq_tab>div").eq(eq).show();
  $(this).addClass("mobile_add_2");
 })



/*mobile slide Toggle script*/
 var rotate=0;
  $(".mobile_down").click(function(){
    if(rotate==0){ 
    $(this).next(".mobile_tab_menu_sub_ul_1").stop().slideDown();
  $(this).css("transform","rotate(180deg)");
  rotate=1;
  }
    else{
      $(this).next(".mobile_tab_menu_sub_ul_1").stop().slideUp();
      $(this).css("transform","rotate(0deg)");
      rotate=0;
    }   
 })

  $(".tab_section_li").click(function(){
    var click=$(this).index();
    $(".eq_section_wrap").hide();
    $(".tab_section_li").removeClass("tab_on");
    $(".eq_section_wrap").eq(click).show();
    $(this).addClass("tab_on");
  })

  /*pc ver gnb script*/
  

  
   $(".pc_ver_gnb_li>a").mouseover(function(){
    	$(".pc_ver_sub").stop().slideDown();
   });
  
  
   $(".pc_ver_sub>li").mouseout(function(){
    	$(".pc_ver_sub").stop().slideUp();
   });
  
  
  
  /*
 $(".pc_ver_gnb_li>a").mouseover(function(){
    $(this).next(".pc_ver_sub").stop().slideDown();
  });
  
  
  $(".pc_ver_sub_div>a").mouseleave(function(){	
	$(this).parent("pc_ver_sub_div").stop().slideUp();
   });

  $('.pc_ver_sub_div').mouseleave(function(){
     $(this).find('.pc_ver_sub').stop().slideUp();
  });
*/  
  
  
  
  
  
  
/*
  setInterval(function(){
 $("#slide_ul").animate({marginLeft:-100+"%"},function(){
  $("#slide_ul>li:first").appendTo("#slide_ul")
  $("#slide_ul").css({marginLeft:0});
 })
},5000)
*/

})//end

getob_active1()
function getob_active1(){
	$.ajax({
		url: "/Object/admin/product",
		type:"get",
		data:{"type":1,"option":"ob_active1"},
		success : function(re){ 
			// alert(re)
			let json = JSON.parse(re)
			console.log(json)
			
				for(let i=0; i<json.length; i++){
					let list = json[i];
					console.log(list)
					
					let html = 	
							'<li>'+
								'<img src="/Object/admin/pimg/'+list.ob_pimg+'">'+
								'<div class="infor">'+
									'<p class="ob_pname">'+list.ob_pname+'</p>'+	
									'<p class="ob_pcomment">'+list.ob_pcomment+'</p>'+						
									'<p class="price">'+list.ob_pprice.toLocaleString()+'원</p>'+
							    '</div>'+
							'</li>'
							console.log(html)	
							document.querySelector(".new_arrival_ul").innerHTML = html			
				}//for end				
			}
	})
	
}



