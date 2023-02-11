<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="wrap">
	<a href="/Object/admin/admin.jsp">목록으로 돌아가기</a>
	<h2>제품 등록하기</h2>
		<form class="productform">
		
			<div class="categorySection">		
				<input type="text" class="ob_pcname" placeholder="원하시는 카테고리가 없는 경우 추가해 주세요">
				<button type="button" onClick="setcategory()">카테고리등록하기</button>	
				<div class="categorylist"></div>		
			</div><!-- categorySection -->
		
			<div>
				<span>제품이름</span>
				<input type="text" class="ob_pname" name="ob_pname" placeholder="제품의 이름을 작성해 주세요">
			</div>
			<div>
				<span>제품가격</span>
				<input type="text" class="ob_pprice" name="ob_pprice" placeholder="제품의 가격을 작성해 주세요">원
			</div>
			<div>
				<span>제품 이미지</span>
				<input type="file" class="ob_pimg" name="ob_pimg">
			</div>
			<div>
				<span>제품설명</span>
				<textarea style="width:400px; height:150px; resize:none;" class="ob_pcomment" name="ob_pcomment"></textarea>
			</div>
		
			<button type="button" onClick="setproduct()">등록하기</button>
		</form> 

		<div><!-- 이미지 -->
			<img src="" alt="" id="ob_pimg">
		</div>
	
	

</div><!-- wrap -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/Object/js/admin/register.js"></script>

</body>
</html>