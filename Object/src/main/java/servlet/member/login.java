package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.MemberDao;


@WebServlet("/member/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public login() {super();}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//form 객체로부터 변수 요청
				String ob_id =  request.getParameter("ob_id");
				String ob_password = request.getParameter("ob_password");
				
				System.out.println("login.java ob_id 확인 : " + ob_id);
				System.out.println("login.java ob_password 확인 : " + ob_password);
				
				//html 끝
				
				
				//만약에 로그인을 성공하면 세션을 할당함.
				//세션은 메모리를 만들 수 있다. 
				//만약에 결과값이 1이면 결과값1이뭔데? dao login 확인하면 결과값이 1이면 로그인성공임 그러니까 로그인성공하면
				int result = MemberDao.getInstance().login(ob_id, ob_password);
				System.out.println("login.java result 확인 " + result);
				
				if(result==1) {
					//1. 세션객체를 생성함
					HttpSession session = request.getSession();
					//2.세션 생성
					session.setAttribute("ob_id", ob_id);					
				}
				
				
				response.getWriter().print(result);
	}

}
