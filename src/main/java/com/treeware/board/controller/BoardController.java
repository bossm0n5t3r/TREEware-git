package com.treeware.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.treeware.admin.board.service.AdminBoardService;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.board.service.BoardService;

@Controller
@RequestMapping("/member/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private AdminBoardService adminBoardService;
	
	// 게시판 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "member/board/main";
	}
	
	//게시판 이동
	@RequestMapping("/boardsortlist.tree")
	public ModelAndView boardsortlist(@RequestParam Map<String,String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Map <String, String> userMap = new HashMap<String, String>();
		Map <String, String> pageMap = new HashMap<String, String>();
		List<BoardDto> boardDto = boardService.getBoardInfo(map.get("bcode"));
		int cnt = adminBoardService.getBoardCount(map.get("bcode"));
		mav.addObject("cnt", cnt);
		mav.addObject("board", boardDto);
		mav.addObject("pageMap", pageMap);
		mav.setViewName("member/board/boardsortlist");
		userMap.put("bcode", map.get("bcode"));
		userMap.put("btype", map.get("btype"));
		userMap.put("bname", map.get("bname"));
		userMap.put("pg", "1");
		userMap.put("key", "");
		userMap.put("word", "");
		session.setAttribute("userBoardInfo", userMap);
		return mav;
	}
	
	//side list 출력
	@RequestMapping("/boardlist.tree")
	public @ResponseBody String boardlist() {
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
	
	//글쓰기
	@RequestMapping(value="/write.tree", method=RequestMethod.POST)
	public ModelAndView write(BoardDto boardDto, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		Map<String, String> map = (Map) session.getAttribute("userBoardInfo");
		boardDto.setEmp_sq(employeeDto.getEmp_sq());
		int cnt = boardService.boardWrite(boardDto);
		mav.addObject("bcode", map.get("bcode"));
		mav.setViewName("redirect:boardsortlist.tree");
		return mav;
	}
	
	//글쓰기이동
	@RequestMapping(value="/write.tree", method=RequestMethod.GET)
	public String write() {
		return "member/board/write";
	}
	
	//보기
	@RequestMapping(value="/boardview.tree", method=RequestMethod.GET)
	public ModelAndView boardview(BoardDto boardDto) {
		ModelAndView mav = new ModelAndView();
		System.out.println(boardDto.getBrd_sq());
		BoardDto boardView = boardService.boardView(boardDto.getBrd_sq());
		mav.addObject("boardView", boardView);
		mav.setViewName("member/board/boardview");
		return mav;
	}
}
