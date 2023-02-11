package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDao;


@WebServlet("/member/findpassword")
public class findpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public findpassword() {super();}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//1 . 변수선언
		String ob_id = request.getParameter("ob_id");		
		String ob_name = request.getParameter("ob_name");		
		String ob_email = request.getParameter("ob_email");
		
		System.out.println("findpassword.java ob_id 확인 : " + ob_id);
		System.out.println("findpassword.java ob_name 확인 : " + ob_name);
		System.out.println("findpassword.java ob_email 확인 : " + ob_email);
		
		// dao 
		
		//결과
		String result = MemberDao.getInstance().findpassword(ob_id, ob_name, ob_email);
		// 앗 response 가 없는데요???어...? // ... 문제가 없었네요 ㅎㅎ 더 질문있을까요?아니요..........
		response.getWriter().print(result);
		System.out.println("findpassword.java 결과 확인 " + result);
		
		
		
		
	}

}
