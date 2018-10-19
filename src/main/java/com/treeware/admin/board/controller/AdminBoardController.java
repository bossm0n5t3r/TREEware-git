package com.treeware.admin.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/board")
public class AdminBoardController {

	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/board/main");
		return mav;
	}
	
//	@RequestMapping(value="/register.tree", method=RequestMethod.GET)
//	public ModelAndView register() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("admin/board/register");
//		return mav;
//	}
//	//게시판생성
//	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
//	public ModelAndView register(@RequestParam ) {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("admin/board/register");
//		return mav;
//	}
	
	@RequestMapping("/view.tree")
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/board/view");
		return mav;
	}
	
	@RequestMapping("/edit.tree")
	public ModelAndView edit() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/board/edit");
		return mav;
	}
}
