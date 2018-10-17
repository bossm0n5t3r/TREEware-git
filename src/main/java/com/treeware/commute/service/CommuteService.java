package com.treeware.commute.service;

import java.util.List;
import java.util.Map;

import com.treeware.admin.commute.model.CommuteDto;

public interface CommuteService {
	public int checkToday(Map<String, String> map);
	public int getCommuteSq(Map<String, String> map);
	public int getNextCommuteSq(Map<String, String> map);
	public CommuteDto today(int cmt_sq);
	public int punchIn(CommuteDto commuteDto);
	public int workOut(CommuteDto commuteDto);
	public int comeBack(CommuteDto commuteDto);
	public int punchOut(CommuteDto commuteDto);
	public List<CommuteDto> getCommuteDtoList(Map<String, String> map);
	public String getAvgStartTime(String emp_sq);
	public String getAvgEndTime(String emp_sq);
}
