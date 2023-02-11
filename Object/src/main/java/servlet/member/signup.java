package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDao;
import model.dto.MemberDto;


@WebServlet("/member/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public signup() { super();}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 인코딩
				request.setCharacterEncoding("UTF-8"); //0. 한글 인코딩
				
				String ob_id =  request.getParameter("ob_id");
				String ob_password =  request.getParameter("ob_password");
				String ob_name =  request.getParameter("ob_name");
				String ob_phone =  request.getParameter("ob_phone");
				String ob_email =  request.getParameter("ob_email");
				String ob_address = request.getParameter("ob_address");				
				boolean ob_shop_infor = Boolean.parseBoolean( request.getParameter("ob_shop_infor"));
				 
					
				
				MemberDto dto = new MemberDto(0, ob_id, ob_password, ob_name, ob_phone, ob_email, null, ob_address, ob_shop_infor, 0)	;	
				System.out.println("signup.java memberdto 확인 : " + dto.toString());							
					
				//dao 찍고 오셈
				
				
				boolean result =  MemberDao.getInstance().signup(dto);
				response.getWriter().print(result);
				
	}

}
