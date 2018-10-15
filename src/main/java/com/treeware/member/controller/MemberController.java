package com.treeware.member.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.member.service.MemberService;

@Controller
@RequestMapping("/member/home")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 로그인
	@RequestMapping(value="/login.tree", method=RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView("member/home/main");
		EmployeeDto employeeDto = memberService.login(map);
		return mav;
	}
	
	// 관리자에게 문의하기
	@RequestMapping(value="/askform.tree", method=RequestMethod.GET)
	public String mvAskform() {
		return "redirect:/askform.jsp";
	}
	
	
	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/home/main");
		return mav;
	}
	
}
