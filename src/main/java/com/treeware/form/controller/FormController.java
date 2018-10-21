package com.treeware.form.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	
	//결재메뉴 받은편지함(메인)
	@RequestMapping("/main.tree")
	public String main() {
		return "member/sign/main";
	}
	
	//결재메뉴 글쓰기화면
	@RequestMapping("/write.tree")
	public ModelAndView gotowrite() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/sign/write");
		return mav;
	}
	
	//결재메뉴 보낸편지함
	@RequestMapping("/sendbox.tree")
	public ModelAndView sendbox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/sign/sendbox");
		return mav;
	}
	
	@RequestMapping(value="/write.tree", method=RequestMethod.POST)
	public ModelAndView write(FormDto formDto) {
		ModelAndView mav = new ModelAndView();
		int cnt = formService.write(formDto);
		mav.setViewName("member/sign/writeok");
		return mav;
	}
	
	//사원검색
	@RequestMapping("/membersearch.tree")
	public @ResponseBody String memberSearch(@RequestParam Map<String, String> map) {
		System.out.println(map);
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
