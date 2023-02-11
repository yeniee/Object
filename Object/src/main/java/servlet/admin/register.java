package servlet.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.UploadContext;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.oreilly.servlet.MultipartRequest;

import model.dao.ProductDao;
import model.dto.CategoryDto;


@WebServlet("/admin/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public register() {super();}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//카테고리 출력 반환하기
		//db처리
		ArrayList<CategoryDto> list = new ProductDao().getcategorylist();
		//System.out.println("register.java list 확인하기 :" + list);
		//json변환
 		JSONArray array = new JSONArray();//얘는 깡통
		for(CategoryDto dto : list) {//향상된 for문으로 하나씩 차곡차곡 담는다			
			JSONObject object = new JSONObject(); //깡통하나 만들어준다
			object.put("ob_pcno", dto.getOb_pcno());//왜 빨간줄뜨니?
			object.put("ob_pcname", dto.getOb_pcname());//ㅇ왜???			
			array.add(object);
			//System.out.println("register array 확인하기" + array);			
		}		
		//반환 한글 인코딩
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(array);		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글 인코딩
		request.setCharacterEncoding("UTF-8");
		//변수선언
		String ob_pcname = request.getParameter("ob_pcname");
		System.out.println("register.java ob_pcname 확인 : "+ob_pcname);
		
		//productDao 다녀오기
		
		boolean result =  ProductDao.getInstance().setcategory(ob_pcname);
		
		response.getWriter().print(result);
		System.out.println("결과 확인하기" + result);
		
	}

}
