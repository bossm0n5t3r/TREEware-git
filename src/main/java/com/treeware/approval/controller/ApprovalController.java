package com.treeware.approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/sign")
public class ApprovalController {

	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/sign/main");
		return mav;
	}
	
	@RequestMapping("/dept.tree")
	public ModelAndView dept() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/sign/dept");
		return mav;
	}
	
	@RequestMapping("/write.tree")
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/sign/write");
		return mav;
	}
	
}
