package com.treeware.admin.schedule.dao;

import java.util.List;

import com.treeware.admin.schedule.model.ScheduleDivideDto;
import com.treeware.admin.schedule.model.ScheduleDto;

public interface AdminScheduleDao {
	public List<ScheduleDivideDto> getScdDivList();
	public List<ScheduleDto> getListSchedule(String emp_sq);
}
