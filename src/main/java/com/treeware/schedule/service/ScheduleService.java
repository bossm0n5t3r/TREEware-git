package com.treeware.schedule.service;

import java.util.Map;

import com.treeware.admin.schedule.model.ScheduleDto;

public interface ScheduleService {
	public ScheduleDto getSchedule(int scd_sq);
	public int registerSchedule(Map<String, String> map);
	public int modifySchedule(Map<String, String> map);
	public int deleteSchedule(int scd_sq);
	public int monthlySchedule(Map<String, String> map);
}
