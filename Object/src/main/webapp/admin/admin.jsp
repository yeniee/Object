<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<!-- 관리자가 아니거나 로그인을 안했거나 페이지를 막음 -->
<% 
	String ob_id = (String)session.getAttribute("ob_id"); 
	if(ob_id == null || ! ob_id.equals("admin")){
		response.sendRedirect("../member/login.jsp");
	}
%>


<h1>관리자 페이지 입니다.</h1>
<div class="wrap">
	<div class="sidebar">
		<ul class="side_ul">
			<li class="side_li"><a href="/Object/admin/register.jsp">제품 등록하기</a></li>	
			<li class="side_li"><a href="/Object/admin/productlist.jsp">등록된 제품 보기</a></li>			
			
		</ul>
	</div><!-- sidebar -->
	

	
	
		
</div><!-- wrap -->

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>


</body>
</html>