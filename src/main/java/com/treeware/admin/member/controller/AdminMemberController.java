package com.treeware.admin.member.controller;

import java.util.*;

import org.json.JSONArray;
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
	
	// 계정관리 메인페이지
	@RequestMapping("/main.tree")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		List<EmployeeDto> list = new ArrayList<EmployeeDto>();
		List<DepartmentDto> list2 = new ArrayList<DepartmentDto>();
		List<RankDto> list3 = new ArrayList<RankDto>();
		list = adminMemberService.getMemberList();
		list2 = adminMemberService.getDepartmentList();
		list3 = adminMemberService.getRankList();
		mav.addObject("employeeInfo", list);
		mav.addObject("departmentInfo", list2);
		mav.addObject("rankInfo", list3);
		mav.addObject("page", list.size());
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
	
	// 수정페이지 사원목록출력
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
	
	// 사원정보 수정
	@RequestMapping(value="/modify.tree", method=RequestMethod.POST)
	public String modify(EmployeeDto employeeDto) {
		int cnt = adminMemberService.modify(employeeDto);
		return "admin/account/view";
	}
	
	// 사원정보 얻기
	@RequestMapping("/getmember.tree")
	public @ResponseBody String getMember(@RequestParam String emp_sq) {
		EmployeeDto employeeDto = new EmployeeDto();
		DepartmentDto departmentDto = new DepartmentDto();
		PositionDto positionDto = new PositionDto();
		RankDto rankDto = new RankDto();
		employeeDto = adminMemberService.getEmployee(emp_sq);
		departmentDto = adminMemberService.getDepartment(employeeDto.getDpt_sq());
		positionDto = adminMemberService.getPosition(employeeDto.getPst_sq());
		rankDto = adminMemberService.getRank(employeeDto.getRnk_sq());
		JSONObject json = new JSONObject();
		json.put("emp_sq", employeeDto.getEmp_sq());
		json.put("emp_nm", employeeDto.getEmp_nm());
		json.put("emp_bdate", employeeDto.getEmp_bdate());
		json.put("emp_sex", employeeDto.getEmp_sex());
		json.put("emp_reg", employeeDto.getEmp_reg());
		json.put("emp_exit", employeeDto.getEmp_exit());
		json.put("emp_tel1", employeeDto.getEmp_tel1());
		json.put("emp_tel2", employeeDto.getEmp_tel2());
		json.put("emp_tel3", employeeDto.getEmp_tel3());
		json.put("emp_bs_tel1", employeeDto.getEmp_bs_tel1());
		json.put("emp_bs_tel2", employeeDto.getEmp_bs_tel2());
		json.put("emp_bs_tel3", employeeDto.getEmp_bs_tel3());
		json.put("emp_ml_id", employeeDto.getEmp_ml_id());
		json.put("emp_ml_addr", employeeDto.getEmp_ml_addr());
		json.put("emp_addr", employeeDto.getEmp_addr());
		json.put("emp_addr_dt", employeeDto.getEmp_addr_dt());
		json.put("dpt_nm", departmentDto.getDpt_nm());
		json.put("pst_nm", positionDto.getPst_nm());
		json.put("rnk_nm", rankDto.getRnk_nm());
		return json.toString();
	}
	
	//사원검색
	@RequestMapping("/membersearch.tree")
	public @ResponseBody String memberSearch(@RequestParam Map<String, String> map) {
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		List<EmployeeDto> list = new ArrayList<EmployeeDto>();
		list = adminMemberService.memberSearch(map);
		System.out.println(map);
		for(EmployeeDto employeeDto : list) {
			JSONObject member = new JSONObject();
			member.put("emp_sq", employeeDto.getEmp_sq());
			member.put("dpt_sq", employeeDto.getDpt_sq());
			member.put("rnk_sq", employeeDto.getRnk_sq());
			member.put("emp_nm", employeeDto.getEmp_nm());
			member.put("emp_bdate", employeeDto.getEmp_bdate());
			member.put("emp_sex", employeeDto.getEmp_sex());
			member.put("emp_reg", employeeDto.getEmp_reg());
			member.put("emp_exit", employeeDto.getEmp_exit());
			member.put("emp_tel1", employeeDto.getEmp_tel1());
			member.put("emp_tel2", employeeDto.getEmp_tel2());
			member.put("emp_tel3", employeeDto.getEmp_tel3());
			member.put("emp_bs_tel1", employeeDto.getEmp_bs_tel1());
			member.put("emp_bs_tel2", employeeDto.getEmp_bs_tel2());
			member.put("emp_bs_tel3", employeeDto.getEmp_bs_tel3());
			member.put("emp_ml_id", employeeDto.getEmp_ml_id());
			member.put("emp_ml_addr", employeeDto.getEmp_ml_addr());
			member.put("emp_addr", employeeDto.getEmp_addr());
			member.put("emp_addr_dt", employeeDto.getEmp_addr_dt());
			jarray.put(member);
		}
		json.put("employee", jarray);
		return json.toString();
	}
}
