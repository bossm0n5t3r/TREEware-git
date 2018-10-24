package com.treeware.admin.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.board.model.BoardDto;
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
		Map<String, String> map = new HashMap<String, String>();
		List<BoardDto> list = adminBoardService.boardViews();
		for(int i=0;i<list.size();i++) {
			map.put(list.get(i).getEmp_sq(), adminBoardService.getBoardEmpName(list.get(i).getEmp_sq()));	
		}
		mav.addObject("boardEmpName", map);
		mav.addObject("adminBoardList", list);
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
		System.out.println(boardListDto.getBname());
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
