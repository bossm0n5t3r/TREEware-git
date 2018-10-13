package com.treeware.email.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/mail")
public class EmailController {

	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/main");
		return mav;
	}
}
