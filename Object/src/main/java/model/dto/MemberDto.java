package model.dto;

public class MemberDto {
	
	int ob_num; // 회원고유번호
	String ob_id; // 회원 아이디 (대소문자와 숫자 포함 5~20자 까지 받을 예정)
	String ob_password; //회원 비밀번호 (대소문자와 특수문자 포함) 
	String ob_name; // 회원 이름 (한글또는 영문 20자 내외)
	String ob_phone; // 회원 전화번호 (하이픈이 호함된 최대 13글자)
	String ob_email; // 회원 이메일	
	String ob_signup_date; // 가입일
	String ob_address; // 회원 주소 [ 우편번호,도로명주소,지번주소,상세주소]
	boolean ob_shop_infor; 	// 쇼핑이용정보 동의 회원가입 할 때 선택사항이지만 나중에 광고나 이것저것 할 때 필요할 것 같아서 일단 담아봄
	int ob_point; //포인트
	
	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public MemberDto(int ob_num, String ob_id, String ob_password, String ob_name, String ob_phone, String ob_email,
			String ob_signup_date, String ob_address, boolean ob_shop_infor, int ob_point) {
		super();
		this.ob_num = ob_num;
		this.ob_id = ob_id;
		this.ob_password = ob_password;
		this.ob_name = ob_name;
		this.ob_phone = ob_phone;
		this.ob_email = ob_email;
		this.ob_signup_date = ob_signup_date;
		this.ob_address = ob_address;
		this.ob_shop_infor = ob_shop_infor;
		this.ob_point = ob_point;
	}

	public int getOb_num() {
		return ob_num;
	}

	public void setOb_num(int ob_num) {
		this.ob_num = ob_num;
	}

	public String getOb_id() {
		return ob_id;
	}

	public void setOb_id(String ob_id) {
		this.ob_id = ob_id;
	}

	public String getOb_password() {
		return ob_password;
	}

	public void setOb_password(String ob_password) {
		this.ob_password = ob_password;
	}

	public String getOb_name() {
		return ob_name;
	}

	public void setOb_name(String ob_name) {
		this.ob_name = ob_name;
	}

	public String getOb_phone() {
		return ob_phone;
	}

	public void setOb_phone(String ob_phone) {
		this.ob_phone = ob_phone;
	}

	public String getOb_email() {
		return ob_email;
	}

	public void setOb_email(String ob_email) {
		this.ob_email = ob_email;
	}

	public String getOb_signup_date() {
		return ob_signup_date;
	}

	public void setOb_signup_date(String ob_signup_date) {
		this.ob_signup_date = ob_signup_date;
	}

	public String getOb_address() {
		return ob_address;
	}

	public void setOb_address(String ob_address) {
		this.ob_address = ob_address;
	}

	public boolean isOb_shop_infor() {
		return ob_shop_infor;
	}

	public void setOb_shop_infor(boolean ob_shop_infor) {
		this.ob_shop_infor = ob_shop_infor;
	}

	public int getOb_point() {
		return ob_point;
	}

	public void setOb_point(int ob_point) {
		this.ob_point = ob_point;
	}
	
	

	@Override
	public String toString() {
		return "MemberDto [ob_num=" + ob_num + ", ob_id=" + ob_id + ", ob_password=" + ob_password + ", ob_name="
				+ ob_name + ", ob_phone=" + ob_phone + ", ob_email=" + ob_email + ", ob_signup_date=" + ob_signup_date
				+ ", ob_address=" + ob_address + ", ob_shop_infor=" + ob_shop_infor + ", ob_point=" + ob_point + "]";
	}
	
	

	
	
	

	

	
	
	
	
	
}

