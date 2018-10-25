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
import com.treeware.util.NumberCheck;
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
		ModelAndView mav = new ModelAndView("admin/chart/main");
		JSONArray array = new JSONArray();
		String month = String.format("%02d", TreewareConstance.MONTH);
		List<DepartmentDto> list = adminMemberService.getDepartmentList();
		Map<String, String> map = new HashMap<String, String>();
		map.put("month", month);
		// 월별 부서 평균 출근시간
		for (DepartmentDto dto : list) {
			map.remove("dpt_sq");
			String dpt_sq = dto.getDpt_sq() + "";
			map.put("dpt_sq", dpt_sq);
			String avgCommuteStart = adminStaticsService.getDptCommute(map).replaceAll(":", "");
			JSONObject data = new JSONObject();
			data.put("dpt_nm", dto.getDpt_nm());
			data.put("time", NumberCheck.nullToZero(avgCommuteStart));
			array.put(data);
		}
		mav.addObject("dptAvgCmtStart", array.toString());
		
		// 월별 부서 평균 퇴근시간
		JSONArray offwork = new JSONArray();
		for (DepartmentDto dto : list) {
			map.remove("dpt_sq");
			String dpt_sq = dto.getDpt_sq() + "";
			map.put("dpt_sq", dpt_sq);
			String avgCommuteEnd = adminStaticsService.getDptOffWork(map).replaceAll(":", "");
			JSONObject data = new JSONObject();
			data.put("dpt_nm", dto.getDpt_nm());
			data.put("time", NumberCheck.nullToZero(avgCommuteEnd));
			offwork.put(data);
		}
		mav.addObject("dptAvgOffWork", offwork.toString());
		
		return mav;
	}
	
	// 월별 부서 평균 출근시간
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
			String avgCommuteStart = adminStaticsService.getDptCommute(map).replaceAll(":", "");
			JSONObject data = new JSONObject();
			data.put("dpt_nm", dto.getDpt_nm());
			data.put("time", NumberCheck.nullToZero(avgCommuteStart));
			array.put(data);
		}
		mav.addObject("dptAvgCmtStart", array.toString());
		return mav;
	}
	
	// 월별 부서 평균 퇴근시간
	@RequestMapping("/offwork.tree")
	public ModelAndView bigWorkingHours() {
		ModelAndView mav = new ModelAndView("admin/chart/big/offWork");
		JSONArray array = new JSONArray();
		String month = String.format("%02d", TreewareConstance.MONTH);
		List<DepartmentDto> list = adminMemberService.getDepartmentList();
		Map<String, String> map = new HashMap<String, String>();
		map.put("month", month);
		for (DepartmentDto dto : list) {
			map.remove("dpt_sq");
			String dpt_sq = dto.getDpt_sq() + "";
			map.put("dpt_sq", dpt_sq);
			String avgCommuteEnd = adminStaticsService.getDptOffWork(map).replaceAll(":", "");
			JSONObject data = new JSONObject();
			data.put("dpt_nm", dto.getDpt_nm());
			data.put("time", NumberCheck.nullToZero(avgCommuteEnd));
			array.put(data);
		}
		mav.addObject("dptAvgOffWork", array.toString());
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
