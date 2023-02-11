package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import model.dao.MemberDao;
import model.dto.MemberDto;


@WebServlet("/member/mypage")
public class mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public mypage() {super();}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 요청 [세션에 로그인한 정보 호출]
		//세션은형 변환이 반드시 필요하다. 최상위 폴더인 object로 되어있기 때문에 왜? 다양한 것을 저장하기 위해서 객체지향 특징 중 하나 이거 면접에 나올라나? 그냥 객체지향 특징 하나 꼽으라고 하면 이런거 예시로 들면 될까?
		//세션의 정보를 가지고 온다 . 세션의 정보를 가지고 오는 이유는 로그인정보를 가져오고 
			
		String ob_id = (String)request.getSession().getAttribute("ob_id");
		System.out.println("mypage.java ob_id 확인 : " + ob_id);
			
			
	//2. db처리
		MemberDto dto = MemberDao.getInstance().getinfo(ob_id);
			//System.out.println("mypage.java memberdto 확인" + dto);
			//반환을 하려고 하는데 자바스크립트는 dto를 모른다. 누구세요? 문자로만 인식을 하기 때문에
			//js는 dto를 사용 못하기 때문에 js가 알아들을 수 있는 형식으로 변경을 해야한다.
			//대표적으로  json이 있다.
			//dto -> json으로 형식으로 변경해줘야 한다.
			//dto 하나를 보낼때의 예시 여러개를 보낼때는 inforlist 가보기
			JSONObject object = new JSONObject();
			object.put("ob_num", dto.getOb_num());// 왜 오류가 뜨지? 로그인안한상태라서 오류가뜨나 js도 얘 못찾는것 같은데?ㅠ
			object.put("ob_id", dto.getOb_id());
			object.put("ob_name", dto.getOb_name());
			object.put("ob_phone", dto.getOb_phone());
			object.put("ob_email", dto.getOb_email());
			object.put("ob_signup_date", dto.getOb_signup_date());
			object.put("ob_address", dto.getOb_address());
			object.put("ob_shop_infor", dto.isOb_shop_infor());
			object.put("ob_point", dto.getOb_point());
				
			//System.out.println("mypage.java dto확인" + dto);
			//System.out.println("mypage.java object확인" + object);
					
				
			response.setCharacterEncoding("UTF-8");
			//3. 응답
			response.getWriter().print(object);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
