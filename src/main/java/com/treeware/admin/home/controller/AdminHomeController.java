package com.treeware.admin.home.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.admin.statics.service.AdminStaticsService;
import com.treeware.form.model.FormDto;
import com.treeware.form.service.FormService;
import com.treeware.util.TreewareConstance;

@Controller
@RequestMapping("/admin/home")
public class AdminHomeController {

	@Autowired
	private AdminStaticsService adminStaticsService;
	
	@Autowired
	private FormService formService;
	
	// 관리자 메인 페이지
	@RequestMapping("/main.tree")
	public ModelAndView main(HttpSession session) {
		ModelAndView mav = new ModelAndView("admin/home/main");
		
		// 결재 문서 건 수
		//TODO emp_sq를 많이 쓰므로 별도로 처리 필요. 굳이 session 까지 가야하나...
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		List<FormDto> formDto = formService.receiveList(employeeDto.getEmp_sq());
		mav.addObject("formList", formDto);
		
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
	
	
	// 관리자 회사정보수정 페이지
	@RequestMapping("/treeinfo.tree")
	public String treeinfo() {
		return "admin/home/treeinfo";
	}
}
