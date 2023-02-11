package servlet.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ProductDao;


@WebServlet("/admin/deleteproduct")
public class deleteproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deleteproduct() {super();}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//변수
		int ob_pno = Integer.parseInt(request.getParameter("ob_pno"));
		System.out.println("deleteproduct.java ob_pno 확인 " + ob_pno);
		
		//db처리
		boolean result =  ProductDao.getInstance().deleteproduct(ob_pno);
	
		//반환
		response.getWriter().print(result);
		System.out.println("deleteproduct result 확인 : " + result );
	}

}
