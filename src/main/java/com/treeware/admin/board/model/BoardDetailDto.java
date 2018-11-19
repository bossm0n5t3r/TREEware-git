package com.treeware.admin.board.model;

public class BoardDetailDto extends BoardDto {
	private String emp_nm;
	private String bname;

	public String getEmp_nm() {
		return emp_nm;
	}

	public void setEmp_nm(String emp_nm) {
		this.emp_nm = emp_nm;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

}
