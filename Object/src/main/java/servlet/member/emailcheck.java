package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDao;


@WebServlet("/member/emailcheck")
public class emailcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public emailcheck() { }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ob_email = request.getParameter("ob_email");
		System.out.println("emailcheck 확인"+ob_email);
		
		boolean result = MemberDao.getInstance().emailcheck(ob_email);
		response.getWriter().print(result);
		
		System.out.println("emailcheck 결과 확인" + result);
		
		
	}

}
