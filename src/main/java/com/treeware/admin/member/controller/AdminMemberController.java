package com.treeware.admin.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminMemberController {
	
	@RequestMapping("/home/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/home/main");
		return mav;
	}
	
	@RequestMapping("/account/main.tree")
	public ModelAndView main2() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/home/main");
		return mav;
	}
}
