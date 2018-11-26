package com.treeware.admin.board.model;

public class BoardListDetailDto extends BoardListDto {
	private String btype_name;
	private String cname;

	public String getBtype_name() {
		return btype_name;
	}

	public void setBtype_name(String btype_name) {
		this.btype_name = btype_name;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

}
