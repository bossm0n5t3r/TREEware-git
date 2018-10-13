package com.treeware.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/home")
public class MemberController {

	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/home/main");
		return mav;
	}
}
