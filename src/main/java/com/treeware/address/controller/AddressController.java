package com.treeware.address.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/address")
public class AddressController {

	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/address/main");
		return mav;
	}
	
	@RequestMapping("/inside.tree")
	public ModelAndView inside() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/address/inside");
		return mav;
	}
	
	@RequestMapping("/outside.tree")
	public ModelAndView outside() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/address/outside");
		return mav;
	}
	
	@RequestMapping("/bookmark.tree")
	public ModelAndView bookmark() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/address/bookmark");
		return mav;
	}
	
	@RequestMapping(value="/register.tree", method=RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/address/register");
		return mav;
	}
	
}
