package com.treeware.board.controller;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.board.model.BoardListDto;
import com.treeware.board.service.BoardService;

@Controller
@RequestMapping("/member/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	// 게시판 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "member/board/main";
	}
	
	@RequestMapping("/boardsortlist.tree")
	public ModelAndView boardsortlist(@RequestParam("bcode") String bcode) {
		ModelAndView mav = new ModelAndView();
		List<BoardDto> boardDto = boardService.getBoardInfo(bcode);
		mav.addObject("board", boardDto);
		mav.setViewName("member/board/boardsortlist");
		return mav;
	}
	
	@RequestMapping("/boardlist.tree")
	public @ResponseBody String booklist() {
		List<BoardListDto> boardListDto = boardService.getBoardList();
		JSONObject json = new JSONObject();
		json.put("boardList", boardListDto);
		return json.toString();
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
