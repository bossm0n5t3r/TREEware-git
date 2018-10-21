package com.treeware.admin.schedule.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.schedule.model.ScheduleDivideDto;
import com.treeware.admin.schedule.model.ScheduleDto;
import com.treeware.admin.schedule.service.AdminScheduleService;

@Controller
@RequestMapping("/admin/calendar")
public class AdminScheduleController {

	@Autowired
	private AdminScheduleService adminScheduleService;
	
	// 관리자 일정 메인 페이지 이동
	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/calendar/main");
		return mav;
	}
	
	// 일정 분류 목록 가져오기
	@RequestMapping(value="/getScdDivList.tree", method=RequestMethod.GET)
	public @ResponseBody String getScdDivList() {
		JSONObject object = new JSONObject();
		JSONArray array = new JSONArray();
		List <ScheduleDivideDto> list = adminScheduleService.getScdDivList();
		for (ScheduleDivideDto dto : list) {
			JSONObject scdDivDto = new JSONObject();
			scdDivDto.put("SCD_DIV_SQ", dto.getScd_div_sq());
			scdDivDto.put("SCD_DIV_NM", dto.getScd_div_nm());
			
			array.put(scdDivDto);
		}
		object.put("scheduleDivList", array);
		return object.toString();
	}
	
	// 일정 가져오기
	@RequestMapping(value="/getList.tree", method=RequestMethod.GET)
	public @ResponseBody String getList(HttpSession session) {
		JSONObject object = new JSONObject();
		JSONArray array = new JSONArray();
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		List<ScheduleDto> list = adminScheduleService.getListSchedule(employeeDto.getEmp_sq());
		for (ScheduleDto dto : list) {
			JSONObject scheduleDto = new JSONObject();
			scheduleDto.put("scd_sq", dto.getScd_sq());
			scheduleDto.put("scd_div_sq", dto.getScd_div_sq());
			scheduleDto.put("scd_div_nm", dto.getScd_div_nm());
			scheduleDto.put("emp_sq", dto.getEmp_sq());
			scheduleDto.put("scd_nm", dto.getScd_nm());
			scheduleDto.put("scd_pst", dto.getScd_pst());
			scheduleDto.put("scd_sday", dto.getScd_sday());
			scheduleDto.put("scd_stime", dto.getScd_stime());
			scheduleDto.put("scd_eday", dto.getScd_eday());
			scheduleDto.put("scd_etime", dto.getScd_etime());
			scheduleDto.put("scd_dct", dto.getScd_dct());
			
			array.put(scheduleDto);
		}
		object.put("scheduleList", array);
		return object.toString();
	}
}
