package com.treeware.admin.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.board.model.*;
import com.treeware.admin.board.service.AdminBoardService;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.board.service.BoardService;
import com.treeware.common.service.CommonService;
import com.treeware.util.NumberCheck;
import com.treeware.util.PageNavigation;

@Controller
@RequestMapping("/admin/board")
public class AdminBoardController {

	@Autowired
	private AdminBoardService adminBoardService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private CommonService commonService;
	
	//	관리자 게시판 main 이동
	@RequestMapping(value="/main.tree", method=RequestMethod.GET)
	public String main() {
		return "admin/board/main";
	}
	
	//	관리자 게시판 register 이동
	@RequestMapping(value="/register.tree", method=RequestMethod.GET)
	public String register() {
		return "admin/board/register";
	}
	
	//	게시판 리스트 가져가기
	@RequestMapping(value="/getBrdList.tree", method=RequestMethod.GET)
	public @ResponseBody String getBrdList() {
		JSONObject object = new JSONObject();
		JSONArray array = new JSONArray();
		List <BoardListDetailDto> list = adminBoardService.getBrdList();
		for (BoardListDetailDto dto : list) {
			JSONObject brdList = new JSONObject();
			brdList.put("BCODE", dto.getBcode());
			brdList.put("BNAME", dto.getBname());
			brdList.put("BTYPE", dto.getBtype());
			brdList.put("BTYPE_NAME", dto.getBtype_name());
			brdList.put("CCODE", dto.getCcode());
			brdList.put("CNAME", dto.getCname());
			array.put(brdList);
		}
		object.put("brdList", array);
		return object.toString();
	}

	//	게시판 종류 가져가기
	@RequestMapping(value="/getBtypeList.tree", method=RequestMethod.GET)
	public @ResponseBody String getBtypeList() {
		JSONObject object = new JSONObject();
		List<BoardTypeDto> list = adminBoardService.getBtypeList();
		JSONArray array = new JSONArray();
		for (BoardTypeDto dto : list) {
			JSONObject btype = new JSONObject();
			btype.put("BTYPE", dto.getBtype());
			btype.put("BTYPE_NAME", dto.getBtype_name());
			array.put(btype);
		}
		object.put("btypeList", array);
		return object.toString();
	}
	
	//	카테고리 종류 가져가기
	@RequestMapping(value="/getCategoryList.tree", method=RequestMethod.GET)
	public @ResponseBody String getCategoryList() {
		JSONObject object = new JSONObject();
		List<CategoryDto> list = adminBoardService.getCategoryList();
		JSONArray array = new JSONArray();
		for (CategoryDto dto : list) {
			JSONObject ctgry = new JSONObject();
			ctgry.put("CCODE", dto.getCcode());
			ctgry.put("CNAME", dto.getCname());
			array.put(ctgry);
		}
		object.put("categoryList", array);
		return object.toString();
	}
	
	//	게시판 등록
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public @ResponseBody String register(@RequestParam Map<String, String> map) {
		BoardListDto boardListDto = new BoardListDto();
		boardListDto.setBname(map.get("bname"));
		boardListDto.setBtype(NumberCheck.nullToOne(map.get("btype")));
		boardListDto.setCcode(NumberCheck.nullToZero(map.get("ccode")));
		adminBoardService.register(boardListDto);
		return "success";
	}
	
	//	해당 게시판으로 이동
	@RequestMapping(value="/mvBoard.tree", method=RequestMethod.GET)
	public ModelAndView mvBoard(@RequestParam Map<String, String> map, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/board/list");
		// 1. 로그인 되어있는지 확인
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		if (employeeDto != null) {
			// 2. BCODE 를 통해서 게시판 이름 받기
			String boardName = boardService.getBoardName(map);
			// 3. 받아온 게시판 이름을 저장
			mav.addObject("boardName", boardName);			
			// 4. 글목록 받기
			List <BoardDetailDto> boardList = boardService.listArticle(map);
			// 5. 받아온 글 목록 저장
			mav.addObject("boardList", boardList);
			// 6. 하단 페이징 처리 및 저장
			PageNavigation navigator = commonService.makePageNavigation(map);
			navigator.setRoot(request.getContextPath());
			navigator.setKey(map.get("key"));
			navigator.setWord(map.get("word"));
			navigator.setNavigator();
			mav.addObject("navigator", navigator);
		}
		// 7. list 페이지로 이동		
		return mav;
	}
	
	//	글보기 페이지 이동
	@RequestMapping(value="/view.tree", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView("admin/board/view");
		// 1. 로그인 체크
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		if (employeeDto != null) {
			// 2. 글번호 가져오기
			int brd_sq = Integer.parseInt(map.get("seq"));
			// 3. 해당 글 가져오기
			BoardDetailDto article = boardService.viewArticle(brd_sq);
			// 4. 해당 글 담기
			mav.addObject("article", article);
		}
		// 5. view 페이지로 이동
		return mav;
	}
}
