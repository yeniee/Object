package model.dto;

public class ProductDto {
	
	private int ob_pno; 				// 1.제품고유번호
	private String ob_pname ;			// 2.제품이름
	private int ob_pprice; 				// 3.제품가격
	private String ob_pimg; 			// 4.제품 이미지
	private String ob_pcomment; 		// 5.제품이미지 설명
	private byte ob_active;  			// 6.[0]은 준바중 1은 판매중 2는 품절
	private String ob_pdatatime  ;		// 7.제품을 작성한 날짜 
	private int ob_pcno ;				// 8.fk	
	
	public ProductDto() {}

	public ProductDto(int ob_pno, String ob_pname, int ob_pprice, String ob_pimg, String ob_pcomment, byte ob_active,
			String ob_pdatatime, int ob_pcno) {
		super();
		this.ob_pno = ob_pno;
		this.ob_pname = ob_pname;
		this.ob_pprice = ob_pprice;
		this.ob_pimg = ob_pimg;
		this.ob_pcomment = ob_pcomment;
		this.ob_active = ob_active;
		this.ob_pdatatime = ob_pdatatime;
		this.ob_pcno = ob_pcno;
	}

	public int getOb_pno() {
		return ob_pno;
	}

	public void setOb_pno(int ob_pno) {
		this.ob_pno = ob_pno;
	}

	public String getOb_pname() {
		return ob_pname;
	}

	public void setOb_pname(String ob_pname) {
		this.ob_pname = ob_pname;
	}

	public int getOb_pprice() {
		return ob_pprice;
	}

	public void setOb_pprice(int ob_pprice) {
		this.ob_pprice = ob_pprice;
	}

	public String getOb_pimg() {
		return ob_pimg;
	}

	public void setOb_pimg(String ob_pimg) {
		this.ob_pimg = ob_pimg;
	}

	public String getOb_pcomment() {
		return ob_pcomment;
	}

	public void setOb_pcomment(String ob_pcomment) {
		this.ob_pcomment = ob_pcomment;
	}

	public byte getOb_active() {
		return ob_active;
	}

	public void setOb_active(byte ob_active) {
		this.ob_active = ob_active;
	}

	public String getOb_pdatatime() {
		return ob_pdatatime;
	}

	public void setOb_pdatatime(String ob_pdatatime) {
		this.ob_pdatatime = ob_pdatatime;
	}

	public int getOb_pcno() {
		return ob_pcno;
	}

	public void setOb_pcno(int ob_pcno) {
		this.ob_pcno = ob_pcno;
	}

	@Override
	public String toString() {
		return "ProductDto [ob_pno=" + ob_pno + ", ob_pname=" + ob_pname + ", ob_pprice=" + ob_pprice + ", ob_pimg="
				+ ob_pimg + ", ob_pcomment=" + ob_pcomment + ", ob_active=" + ob_active + ", ob_pdatatime="
				+ ob_pdatatime + ", ob_pcno=" + ob_pcno + "]";
	}
	
}
