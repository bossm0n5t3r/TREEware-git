package com.treeware.admin.statics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/chart")
public class AdminStaticsController {

	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/main");
		return mav;
	}
	
	@RequestMapping("/commute.tree")
	public ModelAndView bigCommute() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/big/commute");
		return mav;
	}
	
	@RequestMapping("/workinghours.tree")
	public ModelAndView bigWorkingHours() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/big/workinghours");
		return mav;
	}
	
	@RequestMapping("/vacation.tree")
	public ModelAndView bigVacation() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/big/vacation");
		return mav;
	}
	
	@RequestMapping("/member.tree")
	public ModelAndView bigMember() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/big/member");
		return mav;
	}
}
