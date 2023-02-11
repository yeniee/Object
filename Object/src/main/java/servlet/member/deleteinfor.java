package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDao;


@WebServlet("/member/deleteinfor")
public class deleteinfor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deleteinfor() {super();}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//변수선언
		
		String ob_id = request.getParameter("ob_id");
		String ob_password = request.getParameter("ob_password");
		
		System.out.println("deleteinfor ob_id 확인 : " + ob_id);
		System.out.println("deleteinfor ob_password 확인 : " + ob_password);
		
		//dao찍고  
		
		//반환
		boolean result = MemberDao.getInstance().deleteinfo(ob_id, ob_password);
		response.getWriter().print(result);
		
		System.out.println("deleteinfor result 확인 :" + result);
		
		
	}

}
