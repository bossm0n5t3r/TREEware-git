package com.treeware.admin.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.board.model.BoardListDto;
import com.treeware.admin.board.service.AdminBoardService;

@Controller
@RequestMapping("/admin/board")
public class AdminBoardController {

	@Autowired
	private AdminBoardService adminBoardService;
	
	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/board/main");
		return mav;
	}
	
	@RequestMapping(value="/register.tree", method=RequestMethod.GET)
	public String register() {
		return "admin/board/register";
	}
	//게시판생성
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public String register(BoardListDto boardListDto) {
		adminBoardService.addBoard(boardListDto);
		return "admin/board/register";
	}
	
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
