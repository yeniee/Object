package servlet.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.dao.ProductDao;
import model.dto.CategoryDto;
import model.dto.ProductDto;


@WebServlet("/admin/product")
public class product extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public product() {super();}
    //제품출력
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	//카테고리이름도 가져오고 싶다...	뿌리고 싶다....dto에 추가를한다. 
	
	
		
	//1번은 전체출력 2번은 개별출력 입니다.
	
	
	String type = request.getParameter("type");
	System.out.println("Product.java type 확인하기 : " + type);	
	
	if(type.equals("1")) {		
		//1. 전체출력
				//2.전체 출력이지만 판매중만 출력
				String option = request.getParameter("option");
				System.out.println("Product.java 제품 전체 출력하기 중 판매중만 출력 option 확인" + option );
		//1. db요청하기
		ArrayList<ProductDto> list = new ProductDao().getproductlist(option);		
		System.out.println("product.java 1. 제품출력하기 list 확인하기" + list);	
		//2. JSON 형변환 하기
		JSONArray array = new JSONArray();
		//향상된 for문으로 하나씩 담기
		 for(ProductDto pdto : list) {
			 JSONObject object = new JSONObject(); //object 생성
				 object.put("ob_pno", pdto.getOb_pno()); 			// 1.제품번호
				 object.put("ob_pname", pdto.getOb_pname()); 		// 2.제품이름
				 object.put("ob_pprice", pdto.getOb_pprice()); 		// 3.제품가격
				 object.put("ob_pimg", pdto.getOb_pimg()); 			// 4.제품이미지
				 object.put("ob_pcomment", pdto.getOb_pcomment()); 	// 5.제품설명
				 object.put("ob_active", pdto.getOb_active()); 		// 6.제품상태
				 object.put("ob_pdatatime", pdto.getOb_pdatatime()); // 7.제품올린시간
				 object.put("ob_pcno", pdto.getOb_pcno()); 			//8.카테고리번호			 
				 array.add(object);				 
				//저기...... 왜 pno는 왜 안넘어 오는거야?........
				 System.out.println("product.java 1. 제품출력하기 array 확인하기 : "+ array );		 
			 //3. 반환하기
			 	//1. 한글 인코딩하기
			 response.setCharacterEncoding("UTF-8");
			 	//2. array 반환하기		
			 response.getWriter().print(array); 		 
		 }//if end		
		 //만약에 타입이 2번이면 개별 출력이면
	}else if(type.equals("2")) {
		 //1.
		 int ob_pno = Integer.parseInt(request.getParameter("ob_pno")) ;
		 System.out.println("product.java type 2. ob_pno 확인하기 " + ob_pno );
		 
		 ProductDto dto = new ProductDao().getprobuct(ob_pno);
		 System.out.println("product.java type 2. dto 확인하기 : " + dto);
		 
		 JSONObject object = new JSONObject();
		 object.put("ob_pno", dto.getOb_pno());
		 object.put("ob_pname", dto.getOb_pname());
		 object.put("ob_pprice", dto.getOb_pprice());
		 object.put("ob_pimg", dto.getOb_pimg());
		 object.put("ob_pcomment", dto.getOb_pcomment());
		 object.put("ob_active", dto.getOb_active());
		 object.put("ob_pdatatime", dto.getOb_pdatatime());
		 object.put("ob_pcno", dto.getOb_pcno());
		 
		 System.out.println("product.java type 2 object 확인하기" + object);
		 
		 //한글인코딩
		 response.setCharacterEncoding("UTF-8");
		 response.getWriter().print(object);
	
	}

	}//get end
	

	//제품등록
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MultipartRequest multi = new MultipartRequest(
				request, //1.요청방식
				request.getSession().getServletContext().getRealPath("/admin/pimg"),//저장경로
				1024*1024*10, // 용량
				"UTF-8",//인코딩
				new DefaultFileRenamePolicy()
		);
		
		//1. 변수
		String ob_pname = multi.getParameter("ob_pname");//제품이름null
		int ob_pprice = Integer.parseInt(multi.getParameter("ob_pprice"));//가격 형변환함
		String ob_pimg = multi.getFilesystemName("ob_pimg");//첨부파일
		String ob_pcomment = multi.getParameter("ob_pcomment");//제품설명		
		int ob_pcno = Integer.parseInt(multi.getParameter("ob_pcno"));//카테고리번호 혹시 같이 넘겨야 하나 해서 일단 같이 넘김 어차피 dto에 있음
	
			
		
		System.out.println("product.java ob_pname 확인 : "+ob_pname);
		System.out.println("product ob_pprice 확인 : "+ob_pprice);
		System.out.println("product ob_pimg 확인 : "+ob_pimg);
		System.out.println("product ob_pcomment 확인 : "+ob_pcomment);	
		System.out.println("product ob_pcno 확인 : "+ob_pcno);
		
		//2. dao 처리		
		
		
		ProductDto dto =new ProductDto(0, ob_pname, ob_pprice, ob_pimg, ob_pcomment, (byte)0, ob_pcomment, ob_pcno);
								      //제품번호, 	제품이름, 	제품가격, 	제품이미지, 		제품설명, 	제품상태, 	등록날짜, 카테고리번호
		System.out.println("product.java dto 확인" + dto.toString());
		
		//3.결과
		boolean result = ProductDao.getInstance().setProduct(dto);
		System.out.println("product.java result 확인하기" + result);		
		response.getWriter().print(result);		
	}

	
	
	//수정하기
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MultipartRequest multi = new MultipartRequest(
				request, //1.요청방식
				request.getSession().getServletContext().getRealPath("/admin/pimg"),//저장경로
				1024*1024*10, // 용량
				"UTF-8",//인코딩
				new DefaultFileRenamePolicy()
		);
		
		//수정할대상의 고유번호
		int ob_pno = Integer.parseInt(multi.getParameter("ob_pno"));
		byte ob_active = Byte.parseByte(multi.getParameter("ob_active"));
		
		//만약에 사진이 null이 뜨면 기존에 있는 걸 가져와야함	
		
		ProductDto ob_img_File = new ProductDao().getprobuct(ob_pno);//개별출력한 dao를 소환한다
		System.out.println("ob_img_File 확인하기 "+ob_img_File); //확인
		
		
		String ob_pname = multi.getParameter("ob_pname");//제품이름null
		int ob_pprice = Integer.parseInt(multi.getParameter("ob_pprice"));//가격 형변환함
		String ob_pimg = multi.getFilesystemName("ob_pimg");//첨부파일
		String ob_pcomment = multi.getParameter("ob_pcomment");//제품설명		
		
		if(ob_pimg==null) {ob_pimg = ob_img_File.getOb_pimg(); } //만약에 첨부파일이 null이면 기존에 있는 첨부파일을 넣어서 보낸다.
		
		System.out.println("product.java 수정하기 ob_pno 확인 : " + ob_pno );
		System.out.println("product.java 수정하기 ob_pname 확인 : " + ob_pname );
		System.out.println("product.java 수정하기 ob_active 확인 : " + ob_active );
		System.out.println("product.java 수정하기 ob_pprice 확인 : " + ob_pprice );
		System.out.println("product.java 수정하기 ob_pimg 확인 : " + ob_pimg );
		System.out.println("product.java 수정하기 ob_pcomment 확인 : " + ob_pcomment );
	
		
		ProductDto dto = new ProductDto(ob_pno, ob_pname, ob_pprice, ob_pimg, ob_pcomment, ob_active , null, ob_pno);		
		System.out.println("product.java 제품수정하기  dto 확인 : " + dto.toString());
		
		//결과 보내기
		 boolean result = ProductDao.getInstance().updateproduct(dto);
		 
		 System.out.println("product.java result 된 dto확인하기" + dto);		 
		 System.out.println("product.java 제품수정하기 결과 확인하기 : " + result);
		
	}


	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
