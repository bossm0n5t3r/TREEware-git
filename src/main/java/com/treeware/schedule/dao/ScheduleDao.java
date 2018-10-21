package com.treeware.schedule.dao;

import com.treeware.admin.schedule.model.ScheduleDto;

public interface ScheduleDao {
	public int getNextScheduleSq();
	public ScheduleDto getSchedule(int scd_sq);
	public int registerSchedule(ScheduleDto scheduleDto);
	public int modifySchedule(ScheduleDto scheduleDto);
	public int deleteSchedule(int scd_sq);
}
