package com.treeware.schedule.dao;

import java.util.Map;

import com.treeware.admin.schedule.model.ScheduleDto;

public interface ScheduleDao {
	public int getNextScheduleSq();
	public ScheduleDto getSchedule(int scd_sq);
	public int registerSchedule(Map<String, String> map);
	public int modifySchedule(Map<String, String> map);
	public int deleteSchedule(int scd_sq);
	public int monthlySchedule(Map<String, String> map);
}
