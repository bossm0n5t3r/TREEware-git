package com.treeware.commute.dao;

import java.util.Map;

import com.treeware.admin.commute.model.CommuteDto;

public interface CommuteDao {
	public int checkToday(Map<String, String> map);
	public int getCommuteSq(Map<String, String> map);
	public int getNextCommuteSq(Map<String, String> map);
	public CommuteDto today(int cmt_sq);
	public int punchIn(CommuteDto commuteDto);
	public int punchOut(CommuteDto commuteDto);
}
