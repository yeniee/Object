<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- 헤더 jsp 는 모든 페이지에서 열리기 때문에 상대경로를 사용하면 안됩니다.. 서로 다른 폴더에서 경로를 찾아야 하기 때문에 절대경로로 css , js 호출합니다.  -->
	<!--   css/css.css  로 작성시 member폴더내 페이지에서 호출 불가능 그래서 절대경로인  http://localhost:8080/Object/css/css.css 로 하지만 서블릿과 마찬가지로 localhost:8080 는 생략이 가능하다 -->
	<link rel="stylesheet" href="/Object/css/css.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&family=Poiret+One&family=Quicksand:wght@300;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body>



	<%
	//세션호출
		String loginid = (String)session.getAttribute("ob_id");
	%>
	
	
		<div id="mobile_ver_header_wrap">

			<div id="mobile_header">

				<div id="mobie_ham">
					<div class="mobile_ham_line"></div>
					<div class="mobile_ham_line"></div>
					<div class="mobile_ham_line"></div>
				</div><!--mobie_ham-->
				<div id="mobile_logo">
					<a href="/Object/index.jsp">
						<img src="/Object/img/logo.gif" alt="logo">
					</a>
				</div><!-- mobile_logo -->
				<div id="beasket_icon">
					<img src="/Object/img/icon/mobile_basket.gif" alt="">
				</div><!--beasket_icon-->
			</div><!--mobile_header-->
					

			<div id="mobie_menu_wrap">
				
				<div id="mobile_menu_top_section">
					<div id="mobile_header_left">
				 		<div id="mobie_menu_login" class="mobile_menu_header_text">
				 			<a href="/Object/member/login.jsp">로그인</a>
				 		</div>
					  <div id="mobile_menu_new_member" class="mobile_menu_header_text">
					  	<a href="/Object/member/signup.jsp">회원가입</a>
					  </div><!--mobile_menu_new_member-->
					</div><!--mobile_header_left-->
					<div id="mobile_header_right">				  
					  	<div id="mobile_close">X</div>
					</div><!--mobile_header_right-->
               			 </div><!--mobile_menu_top_section-->
		                <div id="mobile_menu_logo_img">
		                	<img src="/Object/img/mobile_mene_logo.gif" alt="mobile_mene_logo">
		                </div><!--mobile_menu_logo_img-->

                

                	<div class="mobile_menu" id="mobile_menu_1">
                		<ul class="mobile_menu_ul" id="mobile_menu_ul_1">
                			<li class="mobile_menu_li">
                				<a href="javascript:void(0)">
                					<img src="/Object/img/icon/mobile_ham_menu_icon01.gif" alt="">
                					<p>마이페이지</p>
                				</a>
                			</li>
                			<li class="mobile_menu_li">
                				<a href="javascript:void(0)">
                					<img src="/Object/img/icon/mobile_ham_menu_icon02.gif" alt="">
                					<p>최근본상품</p>
                				</a>                				
                			</li>
                			<li class="mobile_menu_li">
                				<a href="javascript:void(0)">
                					<img src="/Object/img/icon/mobile_ham_menu_icon03.gif" alt="">
                					<p>주문조회</p>
                				</a>                				
                			</li>
                			<li class="mobile_menu_li">
                				<a href="javascript:void(0)">
                					<img src="/Object/img/icon/mobile_ham_menu_icon04.gif" alt="">
                					<p>관심상품</p>
                				</a>	
                			</li>
                		</ul>
                	</div><!--mobile_menu_1-->
                	<div class="mobile_menu" id="mobile_menu_2">
                        <ul class="mobile_menu_ul" id="mobile_menu_ul_2">
                			<li class="mobile_menu_li">
                				<a href="javascript:void(0)">
                					<img src="/Object/img/icon/mobile_ham_menu_icon05.gif" alt="">
                					<p>공지사항</p>
                				</a>
                			</li>
                			<li class="mobile_menu_li">
                				<a href="javascript:void(0)">
                					<img src="/Object/img/icon/mobile_ham_menu_icon06.gif" alt="">
                					<p>구매후기</p>
                				</a>                				
                			</li>
                			<li class="mobile_menu_li">
                				<a href="javascript:void(0)">
                					<img src="/Object/img/icon/mobile_ham_menu_icon07.gif" alt="">
                					<p>구매문의</p>
                				</a>                				
                			</li>
                			<li class="mobile_menu_li">
                				<a href="javascript:void(0)">
                					<img src="/Object/img/icon/mobile_ham_menu_icon08.gif" alt="">
                					<p>글로벌샵</p>
                				</a>	
                			</li>
                		</ul>               		
                	</div><!--mobile_menu_2-->
                <!--</div>-->
			
			<div id="mobile_tab_section">

			  <div id="mobile_tab_menu">
				<div class="mobile_tab_menu mobile_add" id="mobile_tab_menu_1">카테고리</div>
				<div class="mobile_tab_menu" id="mobile_tab_menu_2">커뮤니티</div>
			  </div>
              <div id="mobile_tab_eq">
				<div id="mobile_eq_1" class="mobile_eq">
					<ul id="mobile_tab_menu_main_ul_1">
						<li class="mobile_tab_main_menu_1_li mobile_tab_menu_1_li">
						 
						 <a href="javascript:void(0)">fashion</a>
						 <i class="fas fa-chevron-down mobile_down"></i>
						  <ul class="mobile_tab_menu_sub_ul_1">
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">악세사리</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">가방/에코백</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">파우치</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">기타</a>
						  	</li>
						  </ul>
						</li>
						<li class="mobile_tab_menu_1_li">
						 	
						 <a href="javascript:void(0)">living</a>
						 <i class="fas fa-chevron-down mobile_down"></i>
						  <ul class="mobile_tab_menu_sub_ul_1">
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">식기/컵/세트</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">머그/텀블러</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">보관용기</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">패브릭</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">포스터</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">조명/전구</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">인테리어</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">타월</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">비누</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">방향제</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">캔들</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">성냥</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">기타</a>
						  	</li>
						  </ul>
						</li>
						<li class="mobile_tab_menu_1_li">
							
							<a href="javascript:void(0)">stationery</a>
							<i class="fas fa-chevron-down mobile_down"></i>
						  <ul class="mobile_tab_menu_sub_ul_1">
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">노트</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">다이어리/캘린더</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">데스크용품</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">사무용품</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">핸드폰케이스</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">필기구</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">마스킹테이프</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">스티커</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">카드</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">기타</a>
						  	</li>						  
						  </ul>							
						</li>
						<li class="mobile_tab_menu_1_li">
							
							<a href="javascript:void(0)">books</a>
							<i class="fas fa-chevron-down mobile_down"></i>
						  <ul class="mobile_tab_menu_sub_ul_1">
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">에세이</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">소설</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">시</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">매거진</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">예술</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">동화/일러스트</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">생활/취미</a>
						  	</li>
						  	<li class="mobile_tab_menu_sub_li">
						  		<a href="javascript:void(0)">만화</a>
						  	</li>						  							  
						  </ul>								
						</li>
						<li class="mobile_tab_menu_1_li">
							<a href="javascript:void(0)">object wear</a>
						</li>
						<li class="mobile_tab_menu_1_li">
							<a href="javascript:void(0)">brand all</a>
						</li>
					</ul><!--mobile_tab_menu_main_ul_1-->
				</div>
				<div id="mobile_eq_2" class="mobile_eq">
					<ul id="mobile_tab_menu_main_ul_2">
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">about us</a></li>
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">store</a></li>
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">exfibition</a></li>
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">partnership</a></li>
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">notice</a></li>
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">q&a</a></li>
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">review</a></li>
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">f&q</a></li>
						<li class="mobile_tab_menu_2_li"><a href="javascript:void(0)">event</a></li>
					</ul>
				</div>
			  </div><!--mobile_tab_eq-->
			</div><!--mobile_tab_section-->

			<div id="mobile_bottom_tab_wrap">
				<div id="mobile_bottom_tab_section">
					<div class="mobile_bottom_tab mobile_add_2" id="bottom_tab_1">고객센터</div>
					<div class="mobile_bottom_tab" id="bottom_tab_2">계좌정보</div>
				</div><!--bottom_tab_wrap-->

				<div id="mobile_bottom_eq_tab">

					<div class="mobile_bottom_eq_tab mobile_bottom_eq_tab_1">
						<div id="mobile_tel">02 - 3144 - 7778</div>
						<div id="mobile_open">mon - fri : 09:00 ~ 18:00</div>
						<div id="mobile_lunch">13:00 ~ 14:00</div>
						<div id="mobile_off">sat / sun / holiday off</div>
					</div>

					<div class="mobile_bottom_eq_tab mobile_bottom_eq_tab_2">
						<div id="account_name">예금주:(주)오브젝트생활연구소</div>
						<div id="account_number">우리 1005 - 803 - 227785</div>
					</div>

				</div>

			</div><!--bottom_tab_wrap-->

			 <div id="mobile_copy">
			 	<h5>copyright &copy; 주식회사오브젝트생활연구소 all right reserved</h5>
			 	<h6>desigh by insideobjert.com</h6>
			 </div>

			 <div id="mobile_world">
			 	<div class="mobile_word" id="ko">
			 		<img src="/Object/img/ko.png" alt=""> <span>오브젝트 온라인</p>
			 	</div>
			 	<div class="mobile_word" id="us">
			 		<img src="/Object/img/us.png" alt=""> <span>object online</p>
			 	</div>
			 </div>
			 </div>
		</div><!--mobile_ver_header_wrap-->
		
		
		<div id="pc_ver_header_wrap">
			<div id="pc_ver_top_header_section">
				<div id="pc_ver_header_left" class="pc_ver_header">
					<ul>
						<li><a href="javascript:void(0)">q&a</a></li>
						<li><a href="javascript:void(0)">review</a></li>
						<li><a href="javascript:void(0)">event</a></li>
						<li><a href="javascript:void(0)">faq</a></li>
						<li><a href="javascript:void(0)">notice</a></li>
					</ul>
				</div><!--pc_ver_header_left-->
				<div id="pc_ver_header_right" class="pc_ver_header">
					<ul>
					
					<% if(loginid == null){%>	
						<li><a href="/Object/member/login.jsp">login</a></li>
						<li><a href="/Object/member/signup.jsp">signup</a></li>					
					<%} else if(loginid.equals("admin")){%> <!-- 만약에 로그인 아이디가 admin 이면 -->
						<li><a href="/Object/admin/admin.jsp">관리자페이지</a></li>																
					<%} else{%>
						<li><%=loginid%>님 반갑습니다. </li>
						<li><a href="/Object/member/logout.jsp">logout</a></li>
					<%} %>
					
						
						
						
						<li><a href="javascript:void(0)">cart</a></li>
						<li><a href="javascript:void(0)">order</a></li>
						<li><a href="/Object/member/mypage.jsp">my page</a></li>
						<li><a href="javascript:void(0)">globar shop</a></li>
					</ul>
				</div><!--pc_ver_header_right-->

			</div><!--pc_ver_top_header_section-->

			<div id="pc_ver_logo_section">
				<div class="pc_ver_logo">
					<a href="/Object/index.jsp"><img src="/Object/img/logo.gif" alt="logo"></a>
				</div>
				<div class="pc_ver_menu_infor">
					<ul>
						<li><a href="javascript:void(0)">오브젝트</a></li>
						<li><a href="javascript:void(0)">스토어</a></li>
						<li><a href="javascript:void(0)">전시</a></li>
						<li><a href="javascript:void(0)">파트너쉽</a></li>
						<li><a href="javascript:void(0)">채용공고</a></li>
						<li><a href="javascript:void(0)"><i class="fas fa-search search-icon"></i></a></li>
					</ul>
				</div><!--pc_ver_menu_infor-->
			</div><!--pc_ver_logo_section-->

			<div id="pc_ver_gnb">
			    <div id="pc_ver_gnb_left" class="pc_ver_gnb">
				    <ul class="pc_ver_gnb_ul">
					    <li class="pc_ver_gnb_li">
						    <a href="javascript:void(0)">fashion</a>
						    <ul class="pc_ver_sub">
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">악세사리</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">가방/에코백</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">파우치</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">기타</a>
								</li>
							</ul><!--pc_ver_sub-->				    
					    </li>					        
					    <li class="pc_ver_gnb_li">
						    <a href="javascript:void(0)">living</a>
						    <ul class="pc_ver_sub">
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">식기/컵/세트</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">머그/텀블러</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">보관용기</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">패브릭</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">포스터</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">조명/연구</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">인테리어</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">타월</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">비누</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">방향제</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">캔들</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">성냥</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">기타</a>
								</li>
							</ul><!--pc_ver_sub-->					    
					    </li>					        
					    <li class="pc_ver_gnb_li">
						    <a href="javascript:void(0)">stationery</a>
						    <ul class="pc_ver_sub">
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">노트</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">다이어리/캘린더</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">데스크용품</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">사무용품</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">핸드폰케이스</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">필기구</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">마스킹테이프</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">스티커</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">카드</a>
								</li>
								<li class="pc_ver_sub_div">
									   <a href="javascript:void(0)">기타</a>
								</li>			
							</ul><!--pc_ver_sub-->	

					    </li>					       
					    <li class="pc_ver_gnb_li">
						    <a href="javascript:void(0)">books</a>
						    <ul class="pc_ver_sub">
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">에세이</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">소설</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">시</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">매거진</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">예술</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">동화/일러스트</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">생활/취미</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">만화</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">비누</a>
								</li>
								<li class="pc_ver_sub_div">
									<a href="javascript:void(0)">방향제</a>
								</li>
								<li class="pc_ver_sub_div">
									   <a href="javascript:void(0)">캔들</a>
								</li>		
							</ul><!--pc_ver_sub-->					    
					    </li>					        
					    <li class="pc_ver_gnb_li">
						    <a href="javascript:void(0)">object wear</a>
					    </li>
				    </ul>
				   
			    </div><!--pc_ver_gnb_left-->
			    <div id="pc_ver_gnb_right" class="pc_ver_gnb">
				    <ul>
					    <li>
						    <a href="javascript:void(0)">event</a>
					    </li>
					    <li>
						    <a href="javascript:void(0)">arand all</a>
					    </li>
				    </ul>
			    </div>
		    </div><!--pc_ver_gnb-->

		</div><!--pc_ver_header_wrap-->


	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/Object/js/js.js"></script>
</body>
</html>