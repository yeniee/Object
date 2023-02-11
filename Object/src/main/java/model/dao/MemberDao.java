package model.dao;

import java.util.ArrayList;

import model.dto.MemberDto;

public class MemberDao extends Dao {

	//만약에 싱글톤을 사용하고 싶다면
		//1.일단 private으로 선언!
	private static MemberDao dao = new MemberDao();
		//호출이 가능한 아이를 만듬
	public static MemberDao getInstance() {return dao;}
	
	//1.signup 메소드 	
	public boolean signup(MemberDto dto) {
		//insert into 테이블명 //아이디 비밀번호 이름 전화번호 이메일
		String sql = "insert into ob_signup(ob_id,ob_password,ob_name,ob_phone,ob_email,ob_address,ob_shop_infor) values(?,?,?,?,?,?,?);";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getOb_id());
			ps.setString(2, dto.getOb_password());
			ps.setString(3, dto.getOb_name());
			ps.setString(4, dto.getOb_phone());
			ps.setString(5, dto.getOb_email());
			ps.setString(6, dto.getOb_address());			
			ps.setBoolean( 7 , dto.isOb_shop_infor() );			
			ps.executeUpdate(); return true;
		} catch (Exception e) {System.out.println("MemberDao 1. 회원가입 오류 "+e);}
		return false;
	}//signup
		
	//2.아이디 중복체크
	public boolean idcheck(String ob_id) {
		String sql = "select * from ob_signup where ob_id = ?";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, ob_id);
			rs = ps.executeQuery();
			if(rs.next())
			return true;			
		} catch (Exception e) {System.out.println("MemberDao 2. 아이디 중복체크 오류"+ e);}
		return false;		
	}
		
	//3.이메일 중복체크
	public boolean emailcheck(String ob_email) {
		String sql = "select * from ob_signup where ob_email = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ob_email);
			rs = ps.executeQuery();
			if(rs.next())
			return true;			
		} catch (Exception e) {System.out.println("MemberDao 3. 이메일 중복체크 오류" + e);}
		return false;
	}
	

	//4. 로그인
	public int login(String ob_id, String ob_password) {		
		String sql = "select * from ob_signup where ob_id=?"; //먼저 아이디가 존재하는지의 여부 먼저
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ob_id);			
			rs = ps.executeQuery(); //select는 executeQuery를 사용한다.			
			if(rs.next()) { //만약에 레코드가 존재하면
				sql = "select * from ob_signup where ob_id=? and ob_password =?";
				ps = con.prepareStatement(sql);
				ps.setString(1, rs.getString(2));
				ps.setString(2, ob_password);
				rs = ps.executeQuery();
				if(rs.next()) {return 1;} // 아이디도 있고 비밀번호도 있다.
				return 2;// 아이디는 있는데 비밀번호가 없다.
			}
		} catch (Exception e) {System.out.println("MemberDao 4.로그인메소드 오류" + e); return 3;}
			return 0; //회원이 아님	
	}//login end	

	
	//5. 아이디찾기
	public String findid(String ob_name, String ob_phone) {
		System.out.println("n1 : " +ob_name );
		System.out.println("p1 : " +ob_phone );
		String sql = "select * from ob_signup where ob_name= ? "; // 일단 이름이 존재하는지 여부 확인
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, ob_name);
				rs = ps.executeQuery();
				if(rs.next()) {
					sql = "select * from ob_signup where ob_phone= ? ";//그 다음에 전화번호가 존재하는지
					ps = con.prepareStatement(sql);
					ps.setString(1, ob_phone);
					rs = ps.executeQuery();
					if(rs.next()) {
						sql = "select * from ob_signup where ob_name= ? and ob_phone= ? "; // 그 다음 전체적으로 검사
						System.out.println("n : " +ob_name );
						System.out.println("p : " +ob_phone );
						ps = con.prepareStatement(sql);
						ps.setString(1, ob_name);
						ps.setString(2, ob_phone);
						rs = ps.executeQuery();
						if(rs.next()) { return rs.getString(2); }// 모두 일치  아이디 알려줌.					
					}
					return "2"; //전화호가 일치하지 않습니다
				}
				return "3";//이름이 일치하지 않습니다
			} catch (Exception e) {System.out.println("MemberDao 5.아이디찾기 오류" + e);}
			return "0"; //회원이 아님 
	}
	
		
	// 6. 비밀번호 찾기 위한 아이디/이름/메일 확인하기
	public String findpassword(String ob_id, String ob_name, String ob_email) {
		System.out.println("findpassword : "+  ob_id +  ob_name +   ob_email);
		String sql = "select * from ob_signup where ob_id=?"; // 1. 아이디가 있는지 확인한다 있으면 이름으로 넘어가고 없으면 회원이 없다는 뜻
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ob_id);
			rs = ps.executeQuery();
			if (rs.next()) {// 만약에 아이디에 관한 레코드가 있으면
				sql = "select * from ob_signup where ob_name=?"; // 2. 아이디가 있으면 이름이 이름이 일치하는지 알려준다.
				ps = con.prepareStatement(sql);
				ps.setString(1, ob_name);
				rs = ps.executeQuery();
				if (rs.next()) { // 만약에 있으면
					sql = "select * from ob_signup where ob_email=?"; // 3. 이메일 확인
					ps = con.prepareStatement(sql);
					ps.setString(1, ob_email);
					rs = ps.executeQuery();
					if (rs.next()) {
						sql = "select * from ob_signup where ob_id=? and ob_name=? and ob_email=?"; // 그다음 전체적으로 확인한다.
						ps = con.prepareStatement(sql);
						ps.setString(1, ob_id);
						ps.setString(2, ob_name);
						ps.setString(3, ob_email);
						rs = ps.executeQuery();
						if (rs.next()) { return rs.getString(1); } // 모두 일치 + 회원번호를 반환하기 누구한테? 비밀번호 변경하는 페이지에게!
																	//세상에 아이디랑 이메일이랑 이름이랑 일치하는 경우는 없을 테니 아이디랑 이메일이랑 이름이 일치하는  pk를 보내준다.!
						}
					return "-1"; // 이메일 틀림 -하는 이유는 회원번호가 있을 수 있으므로 auto_increment라서 -가 절대 발생하지 않는다.
				}
				return "-2";// 이름이 틀리다
			}
			return "-3"; // 아이디가 없다
		} catch (Exception e) {
			System.out.println("MemberDao 6. 비밀번호를 찾기 위한 정보 확인하기 오류" + e);  }		
		return "0"; //회원이 아님 //주석 빼면 오류납니다.
	}
	
	//7.새로운 비밀번호 업데이트 
	public boolean changepassword( String ob_password ,int ob_num) {
		String sql = "update ob_signup set ob_password = ? where ob_num=? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ob_password);
			ps.setInt(2, ob_num);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {System.out.println("MemberDao 7. 새로운 비밀번호 업데이트" + e);}				
		return false;
	}
	
	
	//8. 회원정보 호출하기
	public MemberDto getinfo(String ob_id) {
		MemberDto dto = null;
		String sql = "select * from ob_signup where ob_id=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ob_id);
			rs = ps.executeQuery();	
			if(rs.next()) {
				dto = new MemberDto(
						rs.getInt(1), //회원번호
						rs.getString(2), //아이디
						null,//비밀번호
						rs.getString(4), //이름 
						rs.getString(5), //전화번호
						rs.getString(6), //이메일
						rs.getString(7), //가입날짜
						rs.getString(8), //주소
						rs.getBoolean(9), //쇼핑이요정보동의
						rs.getInt(9));//0은뭐지? 뭐지 했는데 포인트....ㅎ
				//System.out.println("MemberDao 8.회원정보 호출하기 dto 확인"+ dto);
				return dto;
			}
		} catch (Exception e) {System.out.println("MemberDao 8.회원정보 호출하기 오류" + e);}
		return dto; //반환 
	}
	
	//9.모든 회원 호출하기
	public ArrayList<MemberDto> getinfolist(){
		ArrayList<MemberDto> list = new ArrayList<>();
		String sql = "select * from ob_signup ob_signup";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
			MemberDto	dto = new MemberDto(
						rs.getInt(1), 
						rs.getString(2), 
						null,
						rs.getString(4), 
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7), 
						rs.getString(8), 
						rs.getBoolean(9), 
						rs.getInt(9));
				list.add(dto); //dto를 list에 담아서
			} 
			return list; // 반환
		} catch (Exception e) { System.out.println("MemberDao 9. 모든회원 호출하기 오류" + e);}
	return list;//없으면 깡통으로 반환
	}
	
	
	//10. 회원정보 수정하기	
	public boolean updateinfor(String ob_id, String ob_name, String ob_phone, String ob_email, String ob_address ) {		
		String sql ="update ob_signup set ob_name=?, ob_phone=?,ob_email=?,ob_address=? where ob_id=?";		
		try {			
			ps = con.prepareStatement(sql);			
			ps.setString(1, ob_name);
			ps.setString(2, ob_phone);
			ps.setString(3, ob_email);
			ps.setString(4, ob_address);
			ps.setString(5, ob_id);
			ps.executeUpdate();			
			return true;
		} catch (Exception e) {System.out.println("MemberDao 10.회원정보 수정하기 오류" + e);}
		return false;
	}

	//11. 회원탈퇴하기
	public boolean deleteinfo( String ob_id, String  ob_password ) {
		String sql = "delete from ob_signup where ob_id=? and ob_password=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ob_id);
			ps.setString(2, ob_password);
			int count = ps.executeUpdate();
			if(count == 1) {return true;}
		} catch (Exception e) {System.out.println("MemberDao 11.회원탈퇴하기 오류 " +e);}
		return false;
	}
	
	
	
	//12. 회원아이디를 회원번호로 바꾸는 메소드
	public int getOb_num (String ob_id) {
		String sql = "select ob_num from ob_signup where ob_id";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ob_id);
			rs = ps.executeQuery();
			if(rs.next()) return rs.getInt(1);//만약에 있으면 회원번호를 리턴함
		} catch (Exception e) {System.out.println("12 MemberDao 12. 회원아이디를 회원번호로 바꾸는 메소드 오류" + e);}
		return 0; // 없으면 0리턴 사실상 없다는 뜻.
	}
	
	
	
	
	
	
}// class end
