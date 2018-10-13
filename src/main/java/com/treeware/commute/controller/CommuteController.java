package com.treeware.commute.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/commute")
public class CommuteController {

	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/commute/main");
		return mav;
	}
}
