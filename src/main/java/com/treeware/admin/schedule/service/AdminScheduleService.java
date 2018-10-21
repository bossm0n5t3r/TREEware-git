package com.treeware.admin.schedule.service;

import java.util.List;

import com.treeware.admin.schedule.model.ScheduleDivideDto;
import com.treeware.admin.schedule.model.ScheduleDto;

public interface AdminScheduleService {
	public List<ScheduleDivideDto> getScdDivList();
	public List<ScheduleDto> getListSchedule(String emp_sq);
}
