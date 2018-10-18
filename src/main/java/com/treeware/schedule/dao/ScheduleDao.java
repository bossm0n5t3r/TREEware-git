package com.treeware.schedule.dao;

import com.treeware.admin.schedule.model.ScheduleDto;

public interface ScheduleDao {
	public int registerSchedule(ScheduleDto scheduleDto);
}
