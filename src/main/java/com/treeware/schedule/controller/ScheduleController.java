package com.treeware.schedule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/calendar")
public class ScheduleController {

	
	// 일정관리 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "member/calendar/main";
	}
	
	@RequestMapping("/todo.tree")
	public ModelAndView todo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/calendar/todo");
		return mav;
	}
}
