package servlet.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDao;


@WebServlet("/member/updateinfor")
public class updateinfor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public updateinfor() { super();}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//변수선언 
		
		// 누구를 수정할 것인지 어떤 것을 수정 할 것인지 판단을 하기 위해
		String ob_id = (String)request.getSession().getAttribute("ob_id");
		
		String ob_name = request.getParameter("ob_name");
		String ob_phone = request.getParameter("ob_phone");
		String ob_email = request.getParameter("ob_email");
		String ob_address = request.getParameter("ob_address");
		//여기까지 잘 들어왔는지 확인하기
		System.out.println("updateinfor.java ob_id 확인" + ob_id);
		System.out.println("updateinfor.java ob_name 확인 : " + ob_name);
		System.out.println("updateinfor.java ob_phone 확인 : " + ob_phone);
		System.out.println("updateinfor.java ob_email 확인 : " + ob_email);
		System.out.println("updateinfor.java ob_address 확인 : " + ob_address);
		
		boolean result =  MemberDao.getInstance().updateinfor(ob_id,ob_name, ob_phone, ob_email, ob_address);
		//인코딩변환
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(result);;
		System.out.println("updateinfor.java result 확인하기"+ result);		
	}

}
