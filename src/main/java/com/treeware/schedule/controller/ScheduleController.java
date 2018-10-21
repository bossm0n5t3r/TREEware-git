package com.treeware.schedule.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.schedule.model.ScheduleDto;
import com.treeware.schedule.service.ScheduleService;

@Controller
@RequestMapping("/member/calendar")
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	// 일정관리 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "member/calendar/main";
	}
	
	// TO-DO 페이지
	@RequestMapping("/todo.tree")
	public String todo() {
		return "member/calendar/todo";
	}
	
	// 일정 가져오기
	@RequestMapping(value="/getList.tree", method=RequestMethod.GET)
	public @ResponseBody String getList(HttpSession session) {
		JSONObject object = new JSONObject();
		JSONArray array = new JSONArray();
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		List<ScheduleDto> list = scheduleService.getListSchedule(employeeDto);
		for (ScheduleDto dto : list) {
			JSONObject scheduleDto = new JSONObject();
			scheduleDto.put("scd_sq", dto.getScd_sq());
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
	
	// 일정 등록
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public ModelAndView register(ScheduleDto scheduleDto, @RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/calendar/main");
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		String emp_sq = employeeDto.getEmp_sq();
		scheduleDto.setEmp_sq(emp_sq);
		int cnt = scheduleService.registerSchedule(scheduleDto);
		if (cnt != 0) {
			System.out.println("들어갔으니까 확인해봐");
		}
		return mav;
	}

}
