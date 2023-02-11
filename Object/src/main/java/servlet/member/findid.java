package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;

import model.dao.MemberDao;
import model.dto.MemberDto;


@WebServlet("/member/findid")
public class findid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public findid() {super();}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		response.getWriter().append("Served at: ").append(request.getContextPath());	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 변수선언 
		String ob_name = request.getParameter("ob_name");
		String ob_phone = request.getParameter("ob_phone");
		
		System.out.println("findid.java ob_name 확인 :" + ob_name);
		System.out.println("findid.java ob_phone 확인 : " + ob_phone);
		
		// dao ㄱㄱ
		
		//결과 반환 // 그럼 반환값이 String 이 됩니다.
			// 문제 있을까요? 아니요!
		String result = MemberDao.getInstance().findid(ob_name, ob_phone);
		response.getWriter().print(result);
		System.out.println("MemberDao result 확인 : "+ result);
		
	}

}
