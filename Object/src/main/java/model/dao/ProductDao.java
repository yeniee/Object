package model.dao;

import java.util.ArrayList;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

import model.dto.CategoryDto;
import model.dto.ProductDto;

public class ProductDao extends Dao{
	
	//0. 싱글톤 선언
	private static ProductDao dao = new ProductDao();
	//호출이 가능한 public을 만듬
	public static ProductDao getInstance() {return dao;}
	
	
	//1. 카테고리 등록하기	
	public boolean setcategory(String ob_pcname) {
		String sql ="insert into ob_pcategory(ob_pcname) value(?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ob_pcname);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {System.out.println("ProductDao 1. 카테고리 등록하기 오류"+e);}
		return false;
	}
	
	//2.모든 카테고리 출력하기
	public ArrayList<CategoryDto> getcategorylist(){
		ArrayList<CategoryDto> list = new ArrayList<>(); // 출력이 될 카테고리 리스트를 담을 깡통생성
		String sql = "select * from ob_pcategory";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				CategoryDto dto = new CategoryDto(						
						rs.getInt(1),
						rs.getString(2));
				//System.out.println("ProductDao 2. 카테고리 출력 list 확인" + list);	
				list.add(dto);
			}			
			return list;
		} catch (Exception e) {System.out.println("ProductDao 2. 카테고리 출력 오류" +e);}			
		return list; // 오류에는 null이 
	}
	
	
	//3.카테고리 수정하기
	
	//4. 카테고리 삭제하기
	
	//5. 제품등록하기
	public boolean setProduct(ProductDto dto) {
		System.out.println("ProductDao 5. 제품등록하기 dto 확인 :" + dto);
		String sql = "insert into ob_product (ob_pname,ob_pprice,ob_pimg,ob_pcomment,ob_pcno) values(?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getOb_pname());
			ps.setInt(2, dto.getOb_pprice());
			ps.setString(3, dto.getOb_pimg());
			ps.setString(4, dto.getOb_pcomment());			
			ps.setInt(5, dto.getOb_pcno());
			System.out.println("productDao dto 확인하기 : " + dto);
			ps.executeUpdate();
			return true;		
		} catch (Exception e) {System.out.println("ProductDao 5.제품등록하기 오류" + e);}
		return false;
	}
	
	//6. 모든제품 출력하기 
	public ArrayList<ProductDto> getproductlist(String option){				
		ArrayList<ProductDto> list = new ArrayList<>();
		String sql = null;
		if(option.equals("all")) {
			//1.조건이 없는 전체출력
			sql = "select * from ob_product "; 
		}else if(option.equals("ob_active1")) {
			//2.판매중인 상태만 출력 + 추가함! 판매중인 상품만 최신순으로 배치
			sql = "select * from ob_product where ob_active=1 order by ob_pdatatime desc";
		}		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				ProductDto dto = new ProductDto(
						rs.getInt(1), 
						rs.getString(2), 
						rs.getInt(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getByte(6), 
						rs.getString(7), 
						rs.getInt(8) );
				list.add(dto);//dto에 있었던 것을 list에 담는다.
				System.out.println("productDao 6. 제품출력하기  list 확인 :" + list);
			}		
			System.out.println("productDao 6. return 하기 전 list 확인 :" + list);
			
			return list; // list 를 return한다.	
		} catch (Exception e) { System.out.println("ProductDao 6. 모든 제품 출력하기  오류" + e);}
		return null; 		
	}	
	
	//7. 개별제품 출력하기	
	public ProductDto getprobuct(int ob_pno) {
		String sql = "select * from ob_product where ob_pno="+ ob_pno;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				ProductDto dto = new ProductDto(
						rs.getInt(1), 
						rs.getString(2), 
						rs.getInt(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getByte(6), 
						rs.getString(7), 
						rs.getInt(8));
				System.out.println("ProductDao 7.개별제품확인하기  dto 확인 :" + dto);
				return dto;				
			}			
		} catch (Exception e) { System.out.println("productDao 7. 개별제품 출력하기 오류" + e);}
	return null;	
	}
	
	
	//8. 제품수정하기
	public boolean updateproduct(ProductDto dto) {
		System.out.println("ProductDao 수정하기 전 확인 :" + dto);
		String sql = "update ob_product set ob_pname=?,ob_pprice=?,ob_pimg=?,ob_pcomment=?,ob_active=? where ob_pno=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getOb_pname());
			ps.setInt(2, dto.getOb_pprice());
			ps.setString(3, dto.getOb_pimg());
		 	ps.setString(4, dto.getOb_pcomment());
			ps.setByte(5, dto.getOb_active());
			ps.setInt(6, dto.getOb_pno());		
			ps.executeUpdate();
			System.out.println("ProductDao Ob_pname 수정 후 확인 "+ dto.getOb_pname());
			System.out.println("ProductDao Ob_pprice 수정 후 확인 "+ dto.getOb_pprice());
			System.out.println("ProductDao Ob_pimg 수정 후 확인 "+ dto.getOb_pimg());
			System.out.println("ProductDao Ob_pcomment 수정 후 확인 "+ dto.getOb_pcomment());
			System.out.println("ProductDao Ob_active 수정 후 확인 "+ dto.getOb_active());
			System.out.println("ProductDao getOb_pno 수정 후 확인 "+ dto.getOb_pno());
			return true;
		} catch (Exception e) {System.out.println("ProductDao 8. 제품수정하기 오류" + e);}
		return false;
	}

	
	//9. 제품삭제하기
	public boolean deleteproduct(int ob_pno) {
		String sql = "delete from ob_product where ob_pno=" + ob_pno;
		try {
			ps = con.prepareStatement(sql);
			int count = ps.executeUpdate();
			if(count==1) return true;			
		} catch (Exception e) {System.out.println("ProductDao 9.제품삭제하기 오류" + e);}
		return false;
	}
	
	
	
}//ProductDao end
