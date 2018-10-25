package com.treeware.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
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
		Map <String, String> boardEmpName = new HashMap<String, String>();
		List<BoardDto> boardDto = boardService.getBoardInfo(map.get("bcode"));
		int cnt = adminBoardService.getBoardCount(map.get("bcode"));
		for(int i=0;i<boardDto.size();i++) {
			boardEmpName.put(boardDto.get(i).getEmp_sq(), adminBoardService.getBoardEmpName(boardDto.get(i).getEmp_sq()));	
		}
		mav.addObject("boardEmpName", boardEmpName);
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
	
	// 글쓰기
	//TODO 상태가 엉망임. 1. 왜 Map으로 캐스팅하는가 - 그냥 RequestParam으로 받으면 되지않는가, 2. redirect 시키면 날아감. 왜 담아?
	@RequestMapping(value="/write.tree", method=RequestMethod.POST)
	public ModelAndView write(BoardDto boardDto, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		Map<String, String> map = (Map<String, String>) session.getAttribute("userBoardInfo");
		boardDto.setEmp_sq(employeeDto.getEmp_sq());
		boardService.boardWrite(boardDto);
		mav.addObject("bcode", map.get("bcode"));
		mav.addObject("btype", map.get("btype"));
		mav.addObject("bname", map.get("bname"));
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
		BoardDto boardView = boardService.boardView(boardDto.getBrd_sq());
		mav.addObject("boardView", boardView);
		mav.setViewName("member/board/boardview");
		return mav;
	}
	
	//글검색
		@RequestMapping("/boardsearch.tree")
		public @ResponseBody String memberSearch(@RequestParam Map<String, String> map) {
			JSONObject json = new JSONObject();
			JSONArray jarray = new JSONArray();
			List<BoardDto> list = new ArrayList<BoardDto>();
			list = boardService.boardSearch(map);
			for(BoardDto boardDto : list) {
				JSONObject boards = new JSONObject();
				boards.put("brd_sq", boardDto.getBrd_sq());
				boards.put("brd_ttl", boardDto.getBrd_ttl());
				boards.put("emp_sq", boardDto.getEmp_sq());
				boards.put("brd_dt", boardDto.getBrd_dt());
				boards.put("brd_hits", boardDto.getBrd_hits());
				jarray.put(boards);
			}
			json.put("board", jarray);
			return json.toString();
		}
}
