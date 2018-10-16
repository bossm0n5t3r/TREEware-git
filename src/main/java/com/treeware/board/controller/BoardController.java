package com.treeware.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/board")
public class BoardController {

	
	// 게시판 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "member/board/main";
	}
	
	@RequestMapping("/bookmark.tree")
	public ModelAndView bookmark() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/board/bookmark");
		return mav;
	}
	
	@RequestMapping("/freeboard.tree")
	public ModelAndView freeboard() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/board/freeboard");
		return mav;
	}
	
	@RequestMapping(value="/write.tree", method=RequestMethod.GET)
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/board/write");
		return mav;
	}
}
