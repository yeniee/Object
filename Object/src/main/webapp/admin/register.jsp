<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Object/css/admin/register.css">
</head>
<body>

<div class="wrap">

	<a href="/Object/admin/admin.jsp">목록으로 돌아가기</a>
	<h2 class="title">제품 등록하기</h2>
	
		<form class="productform">
		
		
		<div class="productform_wrap">
			<div class="category_section">		
					<input type="text" class="ob_pcname" placeholder="원하시는 카테고리가 없는 경우 추가해 주세요">
					<button type="button" onClick="setcategory()" class="setcategory">카테고리등록하기</button>	
					<div class="categorylist"></div>		
				</div><!-- categorySection -->
			
				<div class="category_wrap">			
				
					<div class="category_div">
						<span class="text">제품이름</span>
						<input type="text" class="ob_pname" name="ob_pname" placeholder="제품의 이름을 작성해 주세요">
					</div><!-- category_div -->
					
					<div class="category_div">
						<span class="text">제품가격</span>
						<input type="text" class="ob_pprice" name="ob_pprice" placeholder="제품의 가격을 작성해 주세요">원
					</div><!-- categoryScategory_divection -->
					
					<div class="category_div">
						<span class="text">제품 이미지</span>
						<input type="file" class="ob_pimg" name="ob_pimg">
					</div><!-- category_div -->
					
					<div class="category_div">
						<span class="text">제품설명</span>
						<textarea style="width:400px; height:150px; resize:none;" class="ob_pcomment" name="ob_pcomment"></textarea>
					</div><!-- category_div -->
				
					<div class="btn_div">
						<button type="button" onClick="setproduct()" class="setproduct">등록하기</button>
					</div>
					
				
				
				</div><!-- category_wrap -->
		</div><!-- productform_wrap -->
		
		<div class="img_section"><!-- 이미지 -->
			<img src="" alt="" id="ob_pimg">
		</div>
			
			
		</form><!-- productform --> 

		
	
	

</div><!-- wrap -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/Object/js/admin/register.js"></script>

</body>
</html>