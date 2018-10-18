package com.treeware.schedule.service;

import java.util.List;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.schedule.model.ScheduleDto;

public interface ScheduleService {
	public int registerSchedule(ScheduleDto scheduleDto);
	public int modifySchedule(ScheduleDto scheduleDto);
	public int deleteSchedule(int scd_sq);
	public List<ScheduleDto> getListSchedule(EmployeeDto employeeDto);
}
