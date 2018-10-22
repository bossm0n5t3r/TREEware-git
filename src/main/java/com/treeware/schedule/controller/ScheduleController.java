package com.treeware.schedule.controller;

import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
	
	// 일정 등록
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public @ResponseBody String register(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		int scd_sq = scheduleService.registerSchedule(map);
		ScheduleDto scheduleDto = scheduleService.getSchedule(scd_sq);
		object.put("scd_sq", scheduleDto.getScd_sq());
		object.put("scd_div_sq", scheduleDto.getScd_div_sq());
		object.put("scd_div_nm", scheduleDto.getScd_div_nm());
		object.put("emp_sq", scheduleDto.getEmp_sq());
		object.put("scd_nm", scheduleDto.getScd_nm());
		object.put("scd_pst", scheduleDto.getScd_pst());
		object.put("scd_sday", scheduleDto.getScd_sday());
		object.put("scd_eday", scheduleDto.getScd_eday());
		object.put("scd_dct", scheduleDto.getScd_dct());
		return object.toString();
	}
	
	// 일정 수정
	@RequestMapping(value="/modify.tree", method=RequestMethod.POST)
	public @ResponseBody String modify(@RequestParam Map<String, String> map) {
		scheduleService.modifySchedule(map);
		return new JSONObject().toString();
	}
	
	// 일정 삭제
	@RequestMapping(value="/delete.tree", method=RequestMethod.GET)
	public @ResponseBody String delete(@RequestParam int scd_sq) {
		JSONObject object = new JSONObject();
		object.put("SCD_SQ", scd_sq);
		scheduleService.deleteSchedule(scd_sq);
		return object.toString();
	}

}
