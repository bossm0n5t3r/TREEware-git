package com.treeware.admin.statics.controller;

import java.util.*;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
	@RequestMapping(value="/main.tree", method=RequestMethod.GET)
	public String main() {
		return "admin/chart/main";
	}
	
	// 월별 부서 평균 출근시간 페이지 이동
	@RequestMapping(value="/commute.tree", method=RequestMethod.GET)
	public String mvCommute() {
		return "admin/chart/big/commute";
	}
	
	// 월별 부서 평균 퇴근시간 페이지 이동
	@RequestMapping(value="/offwork.tree", method=RequestMethod.GET)
	public String mvOffWork() {
		return "admin/chart/big/offWork";
	}
	
	// 월별 휴가인원 통계 페이지 이동
	@RequestMapping(value="/vacation.tree", method=RequestMethod.GET)
	public String mvVacation() {
		return "admin/chart/big/vacation";
	}
	
	// 보유인력 통계 페이지 이동
	@RequestMapping(value="/member.tree", method=RequestMethod.GET)
	public String mvMember() {
		return "admin/chart/big/member";
	}
	
	// 월별 부서 평균 출근시간
	@RequestMapping(value="/commute.tree", method=RequestMethod.POST)
	public @ResponseBody String commute() {
		JSONObject object = new JSONObject();
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
		object.put("dptAvgCmtStart", array);
		return object.toString();
	}
	
	// 월별 부서 평균 퇴근시간
	@RequestMapping(value="/offwork.tree", method=RequestMethod.POST)
	public @ResponseBody String offWork() {
		JSONObject object = new JSONObject();
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
		object.put("dptAvgOffWork", array);
		return object.toString();
	}
	
	// 월별 휴가인원 통계
	@RequestMapping(value="/vacation.tree", method=RequestMethod.POST)
	public @ResponseBody String vacation() {
		JSONObject vacation = new JSONObject();
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
		vacation.put("vacation", object);
		return vacation.toString();
	}
	
	// 보유인력 통계
	@RequestMapping(value="/member.tree", method=RequestMethod.POST)
	public @ResponseBody String member() {
		JSONObject object = new JSONObject();
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
		object.put("certificate", certificate);
		return object.toString();
	}
	
}
