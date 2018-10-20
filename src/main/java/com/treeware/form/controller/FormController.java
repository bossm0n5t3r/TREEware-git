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
@RequestMapping("/member/form")
public class FormController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@Autowired
	private FormService formService;
	
	//결재등록
	@RequestMapping(value="/write.tree", method=RequestMethod.POST)
	public ModelAndView write(FormDto formDto) {
		System.out.println("ddd");
		ModelAndView mav = new ModelAndView();
		int cnt = formService.write(formDto);
		mav.setViewName("admin/account/register");
		mav.addObject("cnt", cnt);
		System.out.println("//////////////");
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
