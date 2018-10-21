package com.treeware.schedule.service;

import com.treeware.admin.schedule.model.ScheduleDto;

public interface ScheduleService {
	public ScheduleDto getSchedule(int scd_sq);
	public int registerSchedule(ScheduleDto scheduleDto);
	public int modifySchedule(ScheduleDto scheduleDto);
	public int deleteSchedule(int scd_sq);
}
