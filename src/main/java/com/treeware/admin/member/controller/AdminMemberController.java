package com.treeware.admin.member.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.member.service.AdminMemberService;

@Controller
@RequestMapping("/admin/account")
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
//		List<MemberDto> list=new ArrayList<MemberDto>();
//		list = adminMemberService.getMemberList();
		mav.setViewName("admin/account/main");
//		mav.addObject("memberInfo", list);
		return mav;
	}
	
	@RequestMapping(value="/register.tree", method=RequestMethod.GET)
	public ModelAndView mvRegister() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/account/register");
		return mav;
	}
	
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public ModelAndView register(EmployeeDto employeeDto) {
		ModelAndView mav = new ModelAndView();
		int cnt = adminMemberService.register(employeeDto);
		mav.setViewName("admin/account/register");
		return mav;
	}
	
	@RequestMapping("/edit.tree")
	public ModelAndView edit() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/account/edit");
		return mav;
	}
	
	@RequestMapping("/view.tree")
	public ModelAndView view() {
		ModelAndView mav = new ModelAndView();
		List<EmployeeDto> list = new ArrayList<EmployeeDto>();
		list = adminMemberService.getMemberList();
		mav.setViewName("admin/account/view");
		mav.addObject("employeeInfo", list);
		return mav;
	}
	
	@RequestMapping("/idsetup.tree")
	public ModelAndView idSetup(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
		int cnt = adminMemberService.idSetup(map);
		mav.setViewName("index");
		return mav;
	}
	
	
	// 아이디 중복 검사
	@RequestMapping("/idcheck.tree")
	public @ResponseBody String checkId(@RequestParam String id) {
		int cnt = adminMemberService.idCheck(id);
		JSONObject json = new JSONObject();
		json.put("cnt", cnt);
		return json.toString();
	}
}
