package com.treeware.admin.statics.dao;

import java.util.Map;

public interface AdminStaticsDao {

	public String getDptCommute(Map<String, String> map);
	public String getDptOffWork(Map<String, String> map);
	public int getVacation(String month);

}
