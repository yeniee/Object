<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
제품수정하기
	<div class="update_wrap">
		<form>			
			<div><span>제품번호 : </span><span class="ob_pno"></span></div>
			<div><span>제품이름 : </span><input type="text" name="ob_pname" class="ob_pname"></div>
			<div><span>제품가격</span><input type="text" name="ob_pprice" class="ob_pprice"></div>
			<div><span>제품이미지</span><span type="file" name="ob_pimg" class="ob_pimg"></div>
			<div><span>제품설명</span><input type="text" name="ob_pcomment" class="ob_pcomment"></div>
			<div><span>제품상태</span><input type="text" name="ob_active" class="ob_active"></div>
			<div><span>제품올린시간</span><span class="ob_pdatatime"></span></div>
			<div><span>카테고리번호</span><span class="ob_pcno"></span></div>
			<div><button type="button" onClick="updateproduct()">수정하기</button></div>
		</form>
	</div>'


<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/Object/js/admin/updateproduct.js"></script>

</body>
</html>