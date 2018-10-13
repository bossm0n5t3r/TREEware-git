package com.treeware.schedule.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/calendar")
public class ScheduleController {

	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/calendar/main");
		return mav;
	}
}
