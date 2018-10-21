package com.treeware.schedule.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
	
	// 일정 등록
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public String register(ScheduleDto scheduleDto, HttpSession session) {
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		scheduleDto.setEmp_sq(employeeDto.getEmp_sq());
		scheduleService.registerSchedule(scheduleDto);
		return "member/calendar/main";
	}
	
	// 일정 수정
	@RequestMapping(value="/modify.tree", method=RequestMethod.POST)
	public String modify(ScheduleDto scheduleDto, HttpSession session) {
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		scheduleDto.setEmp_sq(employeeDto.getEmp_sq());
		scheduleService.modifySchedule(scheduleDto);
		return "member/calendar/main";
	}

}
