package com.treeware.admin.schedule.controller;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.schedule.service.AdminScheduleService;

@Controller
@RequestMapping("/admin/calendar")
public class AdminScheduleController {

	@Autowired
	private AdminScheduleService adminScheduleService;
	
	// 메인 페이지 이동
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
		return object.toString();
	}
}
