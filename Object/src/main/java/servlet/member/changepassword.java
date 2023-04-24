package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDao;


@WebServlet("/member/changepassword")
public class changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public changepassword() {super();}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ob_num = Integer.parseInt(request.getParameter("ob_num")) ; //얘 때문에 지금 오류가 나는 것 같아요 js 에서는 ob_num 이 없는데 어떻게 하죠?
		String ob_password = request.getParameter("ob_password");
		
		System.out.println("changepassword.java ob_num 확인 : " + ob_num);
		System.out.println("changepassword.java ob_password 확인 :" + ob_password );
		
		boolean result = MemberDao.getInstance().changepassword(ob_password, ob_num);
		System.out.println("changepassword.java result확인 : " + result);
		response.getWriter().print(result);
		
	}
	

}
