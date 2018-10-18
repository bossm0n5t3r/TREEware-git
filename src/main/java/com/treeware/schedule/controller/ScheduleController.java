package com.treeware.schedule.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.schedule.model.ScheduleDto;

@Controller
@RequestMapping("/member/calendar")
public class ScheduleController {

	
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
	public ModelAndView register(ScheduleDto scheduleDto, @RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/calendar/main");
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		String emp_sq = employeeDto.getEmp_sq();
		return mav;
	}
}
