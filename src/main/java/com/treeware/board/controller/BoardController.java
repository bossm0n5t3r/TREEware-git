package com.treeware.board.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.board.service.BoardService;

@Controller
@RequestMapping("/member/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	//TODO	일단은 글쓰기페이지로 이동하게끔. 추후에 목록으로 이동할 예정.
	@RequestMapping(value="/main.tree", method=RequestMethod.GET)
	public String main() {
		return "member/board/write";
	}
	
	//	글쓰기
	@RequestMapping(value="/write.tree", method=RequestMethod.POST)
	public ModelAndView write(BoardDto boardDto, @RequestParam("brdFile") MultipartFile multipartFile, @RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView("member/board/main");
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		if (employeeDto != null) {
			boardDto.setEmp_sq(employeeDto.getEmp_sq());
		}
		return mav;
	}
	
	
}
