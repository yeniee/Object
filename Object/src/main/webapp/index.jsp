<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/Object/css/css.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&family=Poiret+One&family=Quicksand:wght@300;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body>
<%@include file = "../header.jsp" %>
<div id="wrap">
	<div id="slide_section">

			<ul id="slide_ul">
				<li class="slide_li">
					<img src="img/slideimg/mobile_auto_slide_01.jpg" alt="slide_img">
				</li>
				<li class="slide_li">
					<img src="img/slideimg/mobile_auto_slide_02.jpg" alt="slide_img">
				</li>
				<li class="slide_li">
					<img src="img/slideimg/mobile_auto_slide_03.jpg" alt="slide_img">
				</li>
				<li class="slide_li">
					<img src="img/slideimg/mobile_auto_slide_04.jpg" alt="slide_img">
				</li>
			</ul>
		</div><!--slide_section-->

		<div id="weekly_best_section" class="section">

			<div class="top_text">
			 <h2>Weeklry best</h2>
			 <h5>금주의베스트 아이템</h5>
			</div> 

			<div id="weekly_best_item">
				<div class="weekly_div">
					<ul class="item_ul">
						<li class="item_li">						  
						  <a href="javascript:void(0)">
							<img src="img/weekly/mobile_weekly_best_01.jpg" alt="">
							<div class="infor">
							<p class="name">[오브젝트]</p>
							<p class="name_etc">2022 오브젝트 다이어리</p>
							<p class="price">12.000원</p>
							</div>
						  </a> 
						  
						</li>

						<li class="item_li">
							<img src="img/weekly/mobile_weekly_best_02.png" alt="">
							<div class="infor">
							<p class="name">[이나피스퀘어]</p>
							<p class="name_etc">LOVE DAY STICKER#2</p>
							<p class="price">6.000원</p>
						    </div>
						</li>
					</ul>
				
					<ul class="item_ul">	
						<li class="item_li">
							<img src="img/weekly/mobile_weekly_best_03.jpg" alt="">
							<div class="infor">
							<p class="name">2022 오브젝트 콜라보 다이어리</p>
							<p class="name_etc">이나피스퀘어</p>
							<p class="price">25,000원</p>
						    </div>
						</li>
						<li class="item_li">
							<img src="img/weekly/mobile_weekly_best_04.jpg" alt="">
							<div class="infor">
							<p class="name">[아그아그]</p>
							<p class="name_etc"> HBD sticker</p>
							<p class="price">2.000원</p>
						    </div>
						</li>
						
					</ul>			
				</div>
				<div class="weekly_div">
					<ul class="item_ul">						
						<li class="item_li">
							<img src="img/weekly/mobile_weekly_best_05.jpg" alt="">
							<div class="infor">
							<p class="name">[오브젝트]</p>
							<p class="name_etc">오브젝트 그리드 클립펜</p>
							<p class="price">3.000원</p>
						    </div>
						</li>
						<li class="item_li">
							<img src="img/weekly/mobile_weekly_best_06.jpg" alt="">
							<div class="infor">
							<p class="name">[후긴앤무닌]</p>
							<p class="name_etc"> 드로잉카드 - 모대리와 정물</p>
							<p class="price">2,500원</p>
						    </div>
						</li>
					</ul>
				
					<ul class="item_ul">	
						<li class="item_li">
							<img src="img/weekly/mobile_weekly_best_07.jpg" alt="">
							<div class="infor">
							<p class="name">[달밤피크닉]</p>
							<p class="name_etc"> 눕댕이 모양 발매트</p>
							<p class="price">25.000원</p>
						    </div>
						</li>
						<li class="item_li">
							<img src="img/weekly/mobile_weekly_best_08.jpg" alt="">
							<div class="infor">
							<p class="name">[표뵤뵤]</p>
							<p class="name_etc">호우카고 가방</p>
							<p class="price">49.000원</p>
						    </div>
						</li>
					</ul>
				</div>

					<div class="more">
						more <i class="fas fa-chevron-down"></i>
					</div>
				
			</div>
		</div><!--weekly_best_section-->

			<div id="tab_menu_section">
				<!--<div id="tab_section">-->
					<ul class="tab_section_ul">
						<li class="tab_section_li tab_on"><a href="javascript:void(0)">daily life</a></li>
						<li class="tab_section_li"><a href="javascript:void(0)">deco</a></li>
						<li class="tab_section_li"><a href="javascript:void(0)">travel</a></li>
						<li class="tab_section_li"><a href="javascript:void(0)">office</a></li>
						<li class="tab_section_li"><a href="javascript:void(0)">eco mind</a></li>
					</ul>
				<!--</div>-->
				<div id="eq_section">

					<div class="eq_section_wrap"> 

						<div class="eq_section">
						  <div class="daily_div">
							<ul>
							 <li>
								<img src="/Object/img/tabimg/mobile_tab_img_2_1.jpg" alt="">
								<div class="infor">
									<p class="name">[was yours was mine]</p>
								    <p class="name_etc">(wywm) cotton bag</p>
								    <p class="price">23.000원</p>
							    </div>
							 </li>
							 <li>
								<img src="/Object/img/tabimg/mobile_tab_img_1_2.jpg" alt="">
								<div class="infor">
									<p class="name">[ppp studio]</p>
								    <p class="name_etc">sagle sagle pouch</p>
								    <p class="price">7.500원</p>
							    </div>
							 </li>
							</ul>
							<ul>
							 <li>
								<img src="/Object/img/tabimg/mobile_tab_img_1_3.png" alt="">
								<div class="infor">
									<p class="name">[was yours was mine]</p>
								    <p class="name_etc">(wywm) cotton bag</p>
								    <p class="price">23.000원</p>
							    </div>
							 </li> 
							 <li>
								<img src="/Object/img/tabimg/mobile_tab_img_1_4.jpg" alt="">
								<div class="infor">
									<p class="name">[뚜까따]</p>
								    <p class="name_etc">seum (embroidery) neck-pillow</p>
								    <p class="price">38.000원</p>
							    </div>
							</li> 	
					      						
						 </ul>
							</div><!--daily_div-->
						</div><!--eq_section1-->
						<div class="eq_section">
							<div class="daily_div">

						  <ul>
							
							<li>
								<img src="/Object/img/tabimg/mobile_tab_img_1_5.jpg" alt="">
								<div class="infor">
									<p class="name">[문제이]</p>
								    <p class="name_etc">a little coffee cup</p>
								    <p class="price">16.800원</p>
							    </div>
							</li>
							<li>
								<img src="/Object/img/tabimg/mobile_tab_img_1_6.jpg" alt="">
								<div class="infor">
									<p class="name">[양순]</p>
								    <p class="name_etc">고양이 자손 손수건 -목화씨</p>
								    <p class="price">4.800원</p>
							    </div>
							</li>
						</ul>
						<ul>
							<li>
								<img src="/Object/img/tabimg/mobile_tab_img_1_7.jpg" alt="">
								<div class="infor">
									<p class="name">[ppp studio]</p>
								    <p class="name_etc">[pause] Red kitchen</p>
								    <p class="price">8.500원</p>
							    </div>
							</li>
							<li>
								<img src="/Object/img/tabimg/mobile_tab_img_1_8.jpg" alt="">
								<div class="infor">
									<p class="name">[희숲]</p>
								    <p class="name_etc">멍멍이 친구들 점착메모지_콩이</p>
								    <p class="price">2.000원</p>
							    </div>
							</li>
						  </ul>
						</div><!--daily_div-->
						</div><!--eq_section2-->
					</div><!--eq_section_wrap2-->

					<div class="eq_section_wrap none">
						<div class="eq_section">
						  <div class="deco_div">					
							<ul>
							 <li>
								<img src="/Object/img/tabimg/mobile_tab_img_2_1.jpg" alt="">
								<div class="infor">
									<p class="name">[어레더프롬] [A4]</p>
								    <p class="name_etc">dance series poster</p>
								    <p class="price">5.000원</p>
							    </div>
							 </li>
							 <li>
								<img src="/Object/img/tabimg/mobile_tab_img_2_2.jpg" alt="">
								<div class="infor">
									<p class="name">[문제이]</p>
								    <p class="name_etc">do not disturb(2종)</p>
								    <p class="price">16.800원</p>
							    </div>
							 </li>
							</ul>
						    
							<ul>

							 <li>
								<img src="/Object/img/tabimg/mobile_tab_img_2_3.jpg" alt="">
								<div class="infor">
									<p class="name">[여린바람]</p>
								    <p class="name_etc">맑은바다</p>
								    <p class="price">59.000원</p>
							    </div>
							 </li> 

							 <li>
								<img src="/Object/img/tabimg/mobile_tab_img_2_4.jpg" alt="">
								<div class="infor">
									<p class="name">[여린바람] [A4]</p>
								    <p class="name_etc">자라나는 마음</p>
								    <p class="price">69.000원</p>
							    </div>
							</li> 							
						 </ul>
						</div><!--deco_div-->	
							
						</div>
						<div class="eq_section">
					      <div class="deco_div">

						  <ul>							
							<li>
								<img src="/Object/img/mobile_tab_img_2_5.jpg" alt="">
								<div class="infor">
									<p class="name">[여린바람]</p>
								    <p class="name_etc">작은 속삭임</p>
								    <p class="price">24.000원</p>
							    </div>
							</li>
							<li>
								<img src="/Object/img/mobile_tab_img_2_6.jpg" alt="">
								<div class="infor">
									<p class="name">[여린바람]</p>
								    <p class="name_etc">말랑한 마음</p>
								    <p class="price">46.000원</p>
							    </div>
							</li>
						 </ul>
					      
					      <ul>
							<li>
								<img src="/Object/img/mobile_tab_img_2_7.jpg" alt="">
								<div class="infor">
									<p class="name">[여린바람]</p>
								    <p class="name_etc">말랑한 마음</p>
								    <p class="price">46.000원</p>
							    </div>
							</li>
							<li>
								<img src="/Object/img/mobile_tab_img_2_8.jpg" alt="">
								<div class="infor">
									<p class="name">[여린바람]</p>
								    <p class="name_etc">말랑한 마음</p>
								    <p class="price">46.000원</p>
							    </div>
							</li>
						  </ul>
						</div><!--deco_div-->
						</div><!--eq_section-->
					</div><!--eq_section_wrap-->

					<div class="eq_section_wrap ready none">
						<p>준비중</p>
					</div>

					<div class="eq_section_wrap ready none">
						<p>준비중</p>
					</div>

					<div class="eq_section_wrap ready none">
						<p>준비중</p>
					</div>

					<div class="more">
						more <i class="fas fa-chevron-down"></i>
					</div>

				</div><!--eq_section_wrap-->


			</div><!--tab_menu_section-->
			<div id="community_wrap">

				<div class="community_section community_section_1">
					<div class="community">notice</div>
					<div class="community">qna</div>
					<div class="community">reviews</div>
					<div class="community">sns</div>
				</div>
				<div class="community_section community_section_2">
					<div class="community">about us</div>
					<div class="community">store</div>
					<div class="community">exhibition</div>
					<div class="community">select</div>
				</div>				
			</div><!--community-->

			<div id="new_arrival_wrap">
				<div class="top_text">
			     <h2>new_arrival</h2>
			     <h5>신상품 모음</h5>
			    </div> 
				<div class="new_arrival_section">

					<div class="new_arrival_div">
					<ul class="new_arrival_ul">
						<li class="new_arrival_li">
							<img src="img/new_arrival/mobile_new_img_01.jpg" alt="">
							<div class="infor">
							<p class="name">[uoe studio] </p>
							<p class="name_etc">Nature Scenery poster set</p>
							<p class="price">10.000원</p>
						    </div>

						</li>
						<li>
							<img src="img/new_arrival/mobile_new_img_02.jpg" alt="">
							<div class="infor">
							<p class="name">[ppp studio] </p>
							<p class="name_etc">[bag] holy day bag _ white</p>
							<p class="price">24,000원</p>
						    </div>

						</li>
					</ul>
					</div>
					<div class="new_arrival_div">
					<ul>
						<li>
							<img src="img/new_arrival/mobile_new_img_03.jpg" alt="">
							<div class="infor">
							<p class="name">[달밤피크닉]</p>
							<p class="name_etc"> 눕댕이 모양 발매트]</p>
							<p class="price">25.000원</p>
						    </div>
						</li>

						<li>
					   	<img src="img/new_arrival/mobile_new_img_04.jpg" alt="">
					   	<div class="infor">
					   	<p class="name">[이나피스퀘어 X 오브젝트]</p>
						<p class="name_etc">2022 다이어리</p>
						<p class="price">12.000원</p>
					    </div>
					   </li>

					</ul>
				  </div>
				</div>
				<div class="new_arrival_section">
					<div class="new_arrival_div">

					<ul>					   
					   <li>
					   	<img src="img/new_arrival/mobile_new_img_05.jpg" alt="">
					   	<div class="infor">
					   	<p class="name">[이나피스퀘어]</p>
						<p class="name_etc">good&bad masking tape</p>
						<p class="price">5.000원</p>
					    </div>
					   </li>

					   <li>
					   	<img src="img/new_arrival/mobile_new_img_06.jpg" alt="">
					   	<div class="infor">
					   	<p class="name">[이나피스퀘어]</p>
						<p class="name_etc">love day sticker #2</p>
						<p class="price">6.000원</p>
					    </div>
					   </li>
					</ul>
				    </div>
				    <div class="new_arrival_div">
					<ul>
					   <li>
					   	<img src="img/new_arrival/mobile_new_img_07.jpg" alt="">
					   	<div class="infor">
					   	<p class="name">[오브젝트]</p>
						<p class="name_etc">오브젝트 마스킹테이프 6mm</p>
						<p class="price">3.800원</p>
					    </div>
					   </li>

					   <li>
					   	<img src="img/new_arrival/mobile_new_img_08.jpg" alt="">
					   	<div class="infor">
					   	<p class="name">[하얀바늘]]</p>
						<p class="name_etc">잼잼 에어팟케이스</p>
						<p class="price">20.000원</p>
					    </div>
					   </li>
					</ul>
					</div>					
				</div>

				<div class="more">
						more <i class="fas fa-chevron-down"></i>
					</div>
				
			</div><!--new_arrival_wrap-->
	
</div><!-- wrap -->
		
<%@include file = "../footer.jsp" %>
</body>
</html>