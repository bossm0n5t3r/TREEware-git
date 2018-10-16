package com.treeware.admin.member.controller;

import java.util.*;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.*;
import com.treeware.admin.member.service.AdminMemberService;

@Controller
@RequestMapping("/admin/account")
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		List<EmployeeDto> list = new ArrayList<EmployeeDto>();
		List<DepartmentDto> list2 = new ArrayList<DepartmentDto>();
		List<PositionDto> list3 = new ArrayList<PositionDto>();
		List<RankDto> list4 = new ArrayList<RankDto>();
		list = adminMemberService.getMemberList();
		list2 = adminMemberService.getDepartmentList();
		list3 = adminMemberService.getPositionList();
		list4 = adminMemberService.getRankList();
		mav.addObject("employeeInfo", list);
		mav.addObject("departmentInfo", list2);
		mav.addObject("positionInfo", list3);
		mav.addObject("rankInfo", list4);
		mav.setViewName("admin/account/main");
		return mav;
	}
	
	@RequestMapping(value="/register.tree", method=RequestMethod.GET)
	public ModelAndView mvRegister() {
		ModelAndView mav = new ModelAndView();
		int cnt = adminMemberService.getMemberCount();
		mav.setViewName("admin/account/register");
		mav.addObject("cnt", cnt);
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
		List<DepartmentDto> list2 = new ArrayList<DepartmentDto>();
		List<PositionDto> list3 = new ArrayList<PositionDto>();
		List<RankDto> list4 = new ArrayList<RankDto>();
		list = adminMemberService.getMemberList();
		list2 = adminMemberService.getDepartmentList();
		list3 = adminMemberService.getPositionList();
		list4 = adminMemberService.getRankList();
		mav.addObject("employeeInfo", list);
		mav.addObject("departmentInfo", list2);
		mav.addObject("positionInfo", list3);
		mav.addObject("rankInfo", list4);
		mav.setViewName("admin/account/view");
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
