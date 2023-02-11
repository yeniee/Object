package model.dto;

public class BoardDto {
	private int ob_bno ;
	private String ob_btitle;
	private String ob_bcontent ;
	private String ob_bfile;
	private String ob_bdate;
	private  int ob_bview;  
	private int ob_num ;
	
	public BoardDto() { }

	public BoardDto(int ob_bno, String ob_btitle, String ob_bcontent, String ob_bfile, String ob_bdate, int ob_bview,
			int ob_num) {
		super();
		this.ob_bno = ob_bno;
		this.ob_btitle = ob_btitle;
		this.ob_bcontent = ob_bcontent;
		this.ob_bfile = ob_bfile;
		this.ob_bdate = ob_bdate;
		this.ob_bview = ob_bview;
		this.ob_num = ob_num;
	}

	public int getOb_bno() {
		return ob_bno;
	}

	public void setOb_bno(int ob_bno) {
		this.ob_bno = ob_bno;
	}

	public String getOb_btitle() {
		return ob_btitle;
	}

	public void setOb_btitle(String ob_btitle) {
		this.ob_btitle = ob_btitle;
	}

	public String getOb_bcontent() {
		return ob_bcontent;
	}

	public void setOb_bcontent(String ob_bcontent) {
		this.ob_bcontent = ob_bcontent;
	}

	public String getOb_bfile() {
		return ob_bfile;
	}

	public void setOb_bfile(String ob_bfile) {
		this.ob_bfile = ob_bfile;
	}

	public String getOb_bdate() {
		return ob_bdate;
	}

	public void setOb_bdate(String ob_bdate) {
		this.ob_bdate = ob_bdate;
	}

	public int getOb_bview() {
		return ob_bview;
	}

	public void setOb_bview(int ob_bview) {
		this.ob_bview = ob_bview;
	}

	public int getOb_num() {
		return ob_num;
	}

	public void setOb_num(int ob_num) {
		this.ob_num = ob_num;
	}
	
	
	
	
}
