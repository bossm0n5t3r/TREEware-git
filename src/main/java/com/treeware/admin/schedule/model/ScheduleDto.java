package com.treeware.admin.schedule.model;

public class ScheduleDto extends ScheduleDivideDto {
	private int scd_sq;
	private String emp_sq;
	private String scd_nm;
	private String scd_pst;
	private String scd_sday;
	private String scd_eday;
	private String scd_dct;

	public int getScd_sq() {
		return scd_sq;
	}

	public void setScd_sq(int scd_sq) {
		this.scd_sq = scd_sq;
	}

	public String getEmp_sq() {
		return emp_sq;
	}

	public void setEmp_sq(String emp_sq) {
		this.emp_sq = emp_sq;
	}

	public String getScd_nm() {
		return scd_nm;
	}

	public void setScd_nm(String scd_nm) {
		this.scd_nm = scd_nm;
	}

	public String getScd_pst() {
		return scd_pst;
	}

	public void setScd_pst(String scd_pst) {
		this.scd_pst = scd_pst;
	}

	public String getScd_sday() {
		return scd_sday;
	}

	public void setScd_sday(String scd_sday) {
		this.scd_sday = scd_sday;
	}

	public String getScd_eday() {
		return scd_eday;
	}

	public void setScd_eday(String scd_eday) {
		this.scd_eday = scd_eday;
	}

	public String getScd_dct() {
		return scd_dct;
	}

	public void setScd_dct(String scd_dct) {
		this.scd_dct = scd_dct;
	}

}
