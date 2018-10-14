package com.treeware.email.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping("/newmailbox.tree")
	public ModelAndView newMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/newmailbox");
		return mav;
	}
	
	@RequestMapping("/receivemailbox.tree")
	public ModelAndView receiveMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/receivemailbox");
		return mav;
	}
	
	@RequestMapping("/sendmailbox.tree")
	public ModelAndView sendMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/sendmailbox");
		return mav;
	}
	
	@RequestMapping("/trashmailbox.tree")
	public ModelAndView trashMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/trashmailbox");
		return mav;
	}
	
	@RequestMapping(value="/write.tree", method=RequestMethod.GET)
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/write");
		return mav;
	}
}
