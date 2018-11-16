package com.treeware.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.board.service.BoardService;
import com.treeware.util.TreewareConstance;

@Controller
@RequestMapping("/member/board")
public class BoardController {

	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private BoardService boardService;
	
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
	
	//	해당 게시판으로 이동
	@RequestMapping(value="/mvBoard.tree", method=RequestMethod.GET)
	public ModelAndView mvBoard(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView("member/board/list");
		// 해당 게시판 이름, 게시판 글 내용 전부
		
		return mav;
	}
	
	//	글쓰기
	@RequestMapping(value="/write.tree", method=RequestMethod.POST)
	public ModelAndView write(BoardDto boardDto, @RequestParam("brdFile") MultipartFile multipartFile, @RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView("member/board/main");
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		if (employeeDto != null) {
			boardDto.setEmp_sq(employeeDto.getEmp_sq());
			boardDto.setBrd_dt(TreewareConstance.TODAY);
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
