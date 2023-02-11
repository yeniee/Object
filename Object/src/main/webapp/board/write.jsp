<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file = "../header.jsp" %>
<div class="wrap">
	<div class="write_section">
		<form>
		
			<div>
				<span>제목</span>
				<input type="text" name="ob_btitle" class="ob_btitle">
			</div>
			
			<div>
				<span>내용</span>
				
				<textarea name="ob_bcontent" class="ob_bcontent" style="resize:none"></textarea>
			</div>	
		
			<div>
				<span>첨부파일</span>
				<input type="file" name="ob_bfile" class="ob_bfile">
			</div>		
		
		</form>
			
	</div>
	
	<button class="writebtn" onclick="write()"></button>



</div><!-- wrap -->

<script src="/Object/js/board/write.js"></script>
</body>
</html>

<!-- 
1) 글쓰기
제목
내용
첨부파일을 작성한다

글쓰기 버튼을 클릭해서 
일단 js로 넘긴다

입력한 정보가 잘 넘어왔나 console.log이든 alert 이던 확인을 한다.

여기까지 잘 넘어왔으면 
ajax를 작성해준다.
type은 post로 해줘야하나? 
글 출력은 get이니까 get으로 하고
글 수정은 put으로 하고 
삭제는 delete로 해줘야겠다.
잠깐만 글 보기는 어쩌지? 그냥 걔는 따로 서블릿을 따로 써줘야하는 걸까?

서블릿 이제 아껴써야지

통신이 잘 되나 확인을 한다.
글쓰기는 write
글출력은 getboard
글수정은 boardupdate
글삭제는 delete
글보기는 list 
아 근데 파일은 대용량이라 다시 멀티로 사용해야하는데...?까먹었는데
다시 영상이랑 파일 찾아봐야겠다.......

다시 돌아와서 서블릿과 통신이 되면

변수를 선언한다.
글제목 / 글내용 / 파일
또 멀티를 쓴다...

다오를 가서 sql문을 작성해준다. 글등록 성공,실패니까 boolean으로 작성해주고,
그냥 등록이니 insert문을 작성해 준다.
ps에 하나씩 차곡차곡 담아서 잘 등록해준다.

다시 서블릿으로 돌아와 boolean result 를 작성해주고
결과값을 반환한다
ajax로 넘어와서 결과값을 true false로 반환해준다.
글등록 성공이 뜨면 아직 출력은 하지 않았으니 db에 잘 저장이 되어있는지 확인한다!
----------------------글등록 끝-------------------------












 -->