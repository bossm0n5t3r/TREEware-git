package com.treeware.admin.statics.controller;

import java.util.*;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.DepartmentDto;
import com.treeware.admin.member.service.AdminMemberService;
import com.treeware.admin.statics.service.AdminStaticsService;
import com.treeware.util.TreewareConstance;

@Controller
@RequestMapping("/admin/chart")
public class AdminStaticsController {

	@Autowired
	private AdminStaticsService adminStaticsService;
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/main");
		return mav;
	}
	
	// 월별 부서 출근 통계시간
	@RequestMapping("/commute.tree")
	public ModelAndView bigCommute() {
		ModelAndView mav = new ModelAndView("admin/chart/big/commute");
		JSONArray array = new JSONArray();
		String month = String.format("%02d", TreewareConstance.MONTH);
		List<DepartmentDto> list = adminMemberService.getDepartmentList();
		Map<String, String> map = new HashMap<String, String>();
		map.put("month", month);
		for (DepartmentDto dto : list) {
			map.remove("dpt_sq");
			String dpt_sq = dto.getDpt_sq() + "";
			map.put("dpt_sq", dpt_sq);
			String avgCommuteStart = adminStaticsService.getDptCommute(map);
			JSONObject data = new JSONObject();
			data.put("dpt_nm", dto.getDpt_nm());
			data.put("time", avgCommuteStart);
			array.put(data);
		}
		mav.addObject("dptAvgCmtStart", array.toString());
		return mav;
	}
	
	@RequestMapping("/workinghours.tree")
	public ModelAndView bigWorkingHours() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/big/workinghours");
		return mav;
	}
	
	@RequestMapping("/vacation.tree")
	public ModelAndView bigVacation() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/big/vacation");
		return mav;
	}
	
	@RequestMapping("/member.tree")
	public ModelAndView bigMember() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart/big/member");
		return mav;
	}
	
}
