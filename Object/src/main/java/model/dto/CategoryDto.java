package model.dto;

public class CategoryDto{

	private int ob_pcno;
	private String ob_pcname;
	
	public CategoryDto() {}

	public CategoryDto(int ob_pcno, String ob_pcname) {
		super();
		this.ob_pcno = ob_pcno;
		this.ob_pcname = ob_pcname;
	}

	public int getOb_pcno() {
		return ob_pcno;
	}

	public void setOb_pcno(int ob_pcno) {
		this.ob_pcno = ob_pcno;
	}

	public String getOb_pcname() {
		return ob_pcname;
	}

	public void setOb_pcname(String ob_pcname) {
		this.ob_pcname = ob_pcname;
	}

	@Override
	public String toString() {
		return "CategoryDto [ob_pcno=" + ob_pcno + ", ob_pcname=" + ob_pcname + "]";
	}
	
	
	

	
	

	
	
	
	
}
