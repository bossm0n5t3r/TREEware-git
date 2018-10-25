package com.treeware.form.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.member.service.AdminMemberService;
import com.treeware.form.model.FormDto;
import com.treeware.form.service.FormService;

@Controller
@RequestMapping("/member/sign")
public class FormController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@Autowired
	private FormService formService;
	
	public EmployeeDto findBySq(String emp_sq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("EMP_SQ", emp_sq);
		EmployeeDto empDto = adminMemberService.getEmployee(emp_sq);
		return empDto;
	}
	//결재메뉴 받은편지함(메인)
	@RequestMapping("/main.tree")
	public ModelAndView main(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		EmployeeDto user = (EmployeeDto) session.getAttribute("userInfo");
		List<EmployeeDto> empWriter = new ArrayList<EmployeeDto>();
		List<FormDto> formDto = formService.receiveList(user.getEmp_sq());
		int cnt = formDto.size();
		for(int i=0 ; i<cnt ; i++) {
			EmployeeDto writer = findBySq(formDto.get(i).getEMP_SQ());
			empWriter.add(writer);
		}
		mav.addObject("cnt", cnt);
		mav.addObject("empWriter", empWriter);
		mav.addObject("formList", formDto);
		mav.setViewName("member/sign/main");
		return mav;
	}
	
	//결재메뉴 보낸편지함
	@RequestMapping("/sendbox.tree")
	public ModelAndView sendbox(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		EmployeeDto user = (EmployeeDto) session.getAttribute("userInfo");
		List<FormDto> formDto = formService.sendList(user.getEmp_sq());
		int cnt = formDto.size();
//		System.out.println(cnt);
		mav.addObject("cnt", cnt);
		mav.addObject("formList", formDto);
		mav.setViewName("member/sign/sendbox");
		return mav;
	}
	
	//결재메뉴 글쓰기화면
	@RequestMapping("/write.tree")
	public ModelAndView gotowrite() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/sign/write");
		return mav;
	}
	
	@RequestMapping("/nextseq.tree")
	public @ResponseBody String nextseq() {
		JSONObject obj = new JSONObject();
		int nextseq = formService.getNextSeq();
		obj.put("nextseq", nextseq);
		return obj.toString();
	}
	
	//결재글쓰기
	@RequestMapping(value="/write.tree", method=RequestMethod.POST)
	public ModelAndView write(FormDto formDto) {
		ModelAndView mav = new ModelAndView();
		int cnt = formService.write(formDto);
		mav.setViewName("member/sign/writeok");
		return mav;
	}
	
	//결재보기
	@RequestMapping(value="/view.tree", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int apv_sq) {
		ModelAndView mav = new ModelAndView();
		FormDto formDto = formService.view(apv_sq);
		EmployeeDto writer = findBySq(formDto.getEMP_SQ());
		EmployeeDto approver1 = findBySq(formDto.getEMP_1ST_SQ());
		EmployeeDto approver2 = findBySq(formDto.getEMP_2ND_SQ());
		EmployeeDto approver3 = findBySq(formDto.getEMP_FNL_SQ());
		mav.addObject("formDto", formDto);
		mav.addObject("writer", writer);
		mav.addObject("approver1", approver1);
		mav.addObject("approver2", approver2);
		mav.addObject("approver3", approver3);
		mav.setViewName("member/sign/view");
		return mav;
	}
	
	//결재승인화면
	@RequestMapping(value="/approve.tree", method=RequestMethod.GET)
	public ModelAndView approve(@RequestParam int apv_sq) {
		ModelAndView mav = new ModelAndView();
		FormDto formDto = formService.approve(apv_sq);
		EmployeeDto writer = findBySq(formDto.getEMP_SQ());
		EmployeeDto approver1 = findBySq(formDto.getEMP_1ST_SQ());
		EmployeeDto approver2 = findBySq(formDto.getEMP_2ND_SQ());
		EmployeeDto approver3 = findBySq(formDto.getEMP_FNL_SQ());
		mav.addObject("formDto", formDto);
		mav.addObject("writer", writer);
		mav.addObject("approver1", approver1);
		mav.addObject("approver2", approver2);
		mav.addObject("approver3", approver3);
		mav.setViewName("member/sign/approve");
		return mav;
	}
	
	//결재승인
	@RequestMapping(value="/change.tree", method=RequestMethod.POST)
	public ModelAndView change(FormDto formDto) {
		ModelAndView mav = new ModelAndView();
		int cnt = formService.change(formDto);
		int apv_sq = formDto.getAPV_SQ();
		FormDto formDto2 = formService.approve(apv_sq);
		EmployeeDto writer = findBySq(formDto2.getEMP_SQ());
		EmployeeDto approver1 = findBySq(formDto2.getEMP_1ST_SQ());
		EmployeeDto approver2 = findBySq(formDto2.getEMP_2ND_SQ());
		EmployeeDto approver3 = findBySq(formDto2.getEMP_FNL_SQ());
		mav.addObject("formDto", formDto2);
		mav.addObject("writer", writer);
		mav.addObject("approver1", approver1);
		mav.addObject("approver2", approver2);
		mav.addObject("approver3", approver3);
		mav.setViewName("member/sign/approve");
		return mav;
	}
	
	//결재서류 작성시 사원검색
	@RequestMapping("/membersearch.tree")
	public @ResponseBody String memberSearch(@RequestParam Map<String, String> map) {
//		System.out.println(map);
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		List<EmployeeDto> list = new ArrayList<EmployeeDto>();
		list = adminMemberService.memberSearch(map);
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
