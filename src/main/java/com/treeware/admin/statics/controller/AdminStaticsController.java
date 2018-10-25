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
	
	// 통계 메인 페이지
	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView("admin/chart/main");
		String month = String.format("%02d", TreewareConstance.MONTH);
		List<DepartmentDto> list = adminMemberService.getDistinctDepartmentList();
		Map<String, String> map = new HashMap<String, String>();
		map.put("month", month);
		// 월별 부서 평균 출근시간
		JSONArray commute = new JSONArray();
		for (DepartmentDto dto : list) {
			map.remove("dpt_sq");
			String dpt_sq = dto.getDpt_sq() + "";
			map.put("dpt_sq", dpt_sq);
			String avgCommuteStart = adminStaticsService.getDptCommute(map).replaceAll(":", "");
			JSONObject data = new JSONObject();
			data.put("dpt_nm", dto.getDpt_nm());
			data.put("time", NumberCheck.nullToZero(avgCommuteStart));
			commute.put(data);
		}
		mav.addObject("dptAvgCmtStart", commute.toString());
		
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
		
		// 월별 휴가인원 통계
		JSONObject vacation = new JSONObject();
		String [] monthsKor = TreewareConstance.MONTHS_KOR;
		String [] monthsEng = TreewareConstance.MONTHS_ENG;
		for (int i = 0; i < 12; i++) {
			String thisMonth = String.format("%02d", i + 1);
			int count = adminStaticsService.getVacation(thisMonth);
			JSONObject data = new JSONObject();
			data.put("month", monthsKor[i]);
			data.put("count", count);
			vacation.put(monthsEng[i], data);
		}
		mav.addObject("vacation", vacation.toString());
		
		// 보유인력 현황
		String [] cert = new String [] {"정보처리기사", "정보보안기사", "운전면허증1종보통", "운전면허증2종보통"
				, "SQLP", "SQLD", "컴퓨터활용능력1급", "컴퓨터활용능력2급"
				, "DAP", "DASP", "MOS"};
		JSONArray certificate = new JSONArray();
		for (String name : cert) {
		int count = adminStaticsService.getCertificates(name);
		JSONObject data = new JSONObject();
		data.put("name", name);
		data.put("count", count);
		certificate.put(data);
		}
		mav.addObject("certificate", certificate);
		
		return mav;
	}
	
	// 월별 부서 평균 출근시간
	@RequestMapping("/commute.tree")
	public ModelAndView bigCommute() {
		ModelAndView mav = new ModelAndView("admin/chart/big/commute");
		JSONArray array = new JSONArray();
		String month = String.format("%02d", TreewareConstance.MONTH);
		List<DepartmentDto> list = adminMemberService.getDistinctDepartmentList();
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
		List<DepartmentDto> list = adminMemberService.getDistinctDepartmentList();
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
	
	// 월별 휴가인원 통계
	@RequestMapping("/vacation.tree")
	public ModelAndView bigVacation() {
		ModelAndView mav = new ModelAndView("admin/chart/big/vacation");
		JSONObject object = new JSONObject();
		String [] monthsKor = TreewareConstance.MONTHS_KOR;
		String [] monthsEng = TreewareConstance.MONTHS_ENG;
		for (int i = 0; i < 12; i++) {
			String month = String.format("%02d", i + 1);
			int count = adminStaticsService.getVacation(month);
			JSONObject data = new JSONObject();
			data.put("month", monthsKor[i]);
			data.put("count", count);
			object.put(monthsEng[i], data);
		}
		mav.addObject("vacation", object.toString());
		return mav;
	}
	
	@RequestMapping("/member.tree")
	public ModelAndView bigMember() {
		ModelAndView mav = new ModelAndView("admin/chart/big/member");
		String [] cert = new String [] {"정보처리기사", "정보보안기사", "운전면허증1종보통", "운전면허증2종보통"
										, "SQLP", "SQLD", "컴퓨터활용능력1급", "컴퓨터활용능력2급"
										, "DAP", "DASP", "MOS"};
		JSONArray certificate = new JSONArray();
		for (String name : cert) {
			int count = adminStaticsService.getCertificates(name);
			JSONObject data = new JSONObject();
			data.put("name", name);
			data.put("count", count);
			certificate.put(data);
		}
		mav.addObject("certificate", certificate);
		return mav;
	}
	
}
