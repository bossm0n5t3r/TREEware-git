package com.treeware.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.board.model.BoardDetailDto;
import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.board.service.BoardService;
import com.treeware.common.service.CommonService;
import com.treeware.util.PageNavigation;

@Controller
@RequestMapping("/member/board")
public class BoardController {

	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private CommonService commonService;
	
	//	메인 페이지 이동
	@RequestMapping(value="/main.tree", method=RequestMethod.GET)
	public String main() {
		return "member/board/main";
	}
	
	//	글쓰기 페이지 이동
	@RequestMapping(value="/write.tree", method=RequestMethod.GET)
	public String mvWrite() {
		return "member/board/write";
	}
	
	//TODO member/board/view.jsp 에서 댓글창 어떻게 만들지!?
	//	글보기 페이지 이동
	@RequestMapping(value="/view.tree", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView("member/board/view");
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
	
	//	해당 게시판으로 이동
	@RequestMapping(value="/mvBoard.tree", method=RequestMethod.GET)
	public ModelAndView mvBoard(@RequestParam Map<String, String> map, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("member/board/list");
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
	
	//	글쓰기
	@RequestMapping(value="/write.tree", method=RequestMethod.POST)
	public ModelAndView write(BoardDto boardDto, @RequestParam("brdFile") MultipartFile multipartFile, @RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView("member/board/main");
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		if (employeeDto != null) {
			boardDto.setEmp_sq(employeeDto.getEmp_sq());
			if (multipartFile != null && !multipartFile.isEmpty()) {
				String ofile = multipartFile.getOriginalFilename();
				
				String realPath = servletContext.getRealPath("/assets/img/board");
				
				DateFormat df = new SimpleDateFormat("yyMMdd");
				String saveFolder = df.format(new Date());
				String realSaveFolder = realPath + File.separator + saveFolder;
				File dir = new File(realSaveFolder);
				if (!dir.exists()) {
					dir.mkdirs();
				}
				
				String sfile = UUID.randomUUID().toString() + ofile.substring(ofile.lastIndexOf("."));
				
				File file = new File(realSaveFolder, sfile);
				
				try {
					multipartFile.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				boardDto.setBrd_fl_onm(ofile);
				boardDto.setBrd_fl_mnm(sfile);
				boardDto.setBrd_fl_rt(saveFolder);
			}
			boardService.write(boardDto);
		}
		return mav;
	}
	
	
}
