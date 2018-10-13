package com.treeware.address.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
