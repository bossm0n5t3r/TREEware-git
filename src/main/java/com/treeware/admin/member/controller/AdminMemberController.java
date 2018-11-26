package com.treeware.admin.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletContext;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.*;
import com.treeware.admin.member.service.AdminMemberService;
import com.treeware.util.NumberCheck;

@Controller
@RequestMapping("/admin/member")
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@Autowired
	private ServletContext servletContext;
	
	//	계정관리 메인페이지
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
	
	//	사원등록
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public ModelAndView register(EmployeePicDto employeePicDto, @RequestParam("file") MultipartFile multipartFile) {
		ModelAndView mav = new ModelAndView("admin/account/main");
		if (multipartFile != null && !multipartFile.isEmpty()) {
	        String ofile = multipartFile.getOriginalFilename();
	        
	        String realPath = servletContext.getRealPath("/assets/img/member");
	        
	        DateFormat df = new SimpleDateFormat("yyMMdd");
	        String saveFolder = df.format(new Date());
	        String realSaveFolder = realPath + File.separator + saveFolder;
	        File dir = new File(realSaveFolder);
	        if (!dir.exists()) {
	          dir.mkdirs();
	        }
	        
	        String sfile = UUID.randomUUID().toString() + ofile.substring(ofile.lastIndexOf("."));
	        
	        File file = new File(realSaveFolder, sfile);
	        employeePicDto.setEmp_pic_onm(ofile);
	        employeePicDto.setEmp_pic_mnm(sfile);
	        employeePicDto.setEmp_pic_rt(saveFolder);
	        employeePicDto.setEmp_pic_dt(saveFolder);
	        try {
	          multipartFile.transferTo(file);
	        } catch (IllegalStateException e) {
	          e.printStackTrace();
	        } catch (IOException e) {
	          e.printStackTrace();
	        }
		}

		adminMemberService.register(employeePicDto);
		
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
	
	@RequestMapping(value="/idsetup.tree", method=RequestMethod.POST)
	public @ResponseBody String idSetup(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		int count = adminMemberService.idSetup(map);
		object.put("count", count);
		return object.toString();
	}
	
	
	// 아이디 중복 검사
	@RequestMapping("/idcheck.tree")
	public @ResponseBody String checkId(@RequestParam String id) {
		int count = adminMemberService.idCheck(id);
		JSONObject object = new JSONObject();
		object.put("count", count);
		return object.toString();
	}
	
	// 사원정보 수정
	//TODO 바로 view.tree 로 가는 방법?
	@RequestMapping(value="/modify.tree", method=RequestMethod.POST)
	public ModelAndView modify(EmployeeDto employeeDto) {
		adminMemberService.modify(employeeDto);
		ModelAndView mav = new ModelAndView("admin/account/view");
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
		return mav;
	}
	
	//	사원정보 얻기
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
	
	//	사원검색
	@RequestMapping("/membersearch.tree")
	public @ResponseBody String memberSearch(@RequestParam Map<String, String> map) {
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

	//	권한명 얻기
	@RequestMapping(value="/getPermission.tree", method=RequestMethod.POST)
	public @ResponseBody String getPermission(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		PermissionDto permissionDto = adminMemberService.getPermission(NumberCheck.nullToZero(map.get("pms_sq")));
		object.put("PMS_NM", permissionDto.getPms_nm());
		return object.toString();
	}
	
	//	부서명 얻기
	@RequestMapping(value="/getDepartment.tree", method=RequestMethod.POST)
	public @ResponseBody String getDepartment(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		DepartmentDto departmentDto = adminMemberService.getDepartment(NumberCheck.nullToZero(map.get("dpt_sq")));
		object.put("DPT_NM", departmentDto.getDpt_nm());
		return object.toString();
	}
	
	//	직위명 얻기
	@RequestMapping(value="/getRank.tree", method=RequestMethod.POST)
	public @ResponseBody String getRank(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		RankDto rankDto = adminMemberService.getRank(NumberCheck.nullToZero(map.get("rnk_sq")));
		object.put("RNK_NM", rankDto.getRnk_nm());
		return object.toString();
	}
	
	//	직책명 얻기
	@RequestMapping(value="/getPosition.tree", method=RequestMethod.POST)
	public @ResponseBody String getPosition(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		PositionDto positionDto = adminMemberService.getPosition(NumberCheck.nullToZero(map.get("pst_sq")));
		object.put("PST_NM", positionDto.getPst_nm());
		return object.toString();
	}
	
	//	전체 부서명 얻기
	@RequestMapping(value="/getDptList.tree", method=RequestMethod.GET)
	public @ResponseBody String getDptList() {
		JSONObject object = new JSONObject();
		List<DepartmentDto> list = adminMemberService.getDptList();
		JSONArray array = new JSONArray();
		for (DepartmentDto dto : list) {
			JSONObject dpt = new JSONObject();
			dpt.put("DPT_SQ", dto.getDpt_sq());
			dpt.put("DPT_NM", dto.getDpt_nm());
			array.put(dpt);
		}
		object.put("dptList", array);
		return object.toString();
	}
	
	//	전체 직위명 얻기
	@RequestMapping(value="/getRnkList.tree", method=RequestMethod.GET)
	public @ResponseBody String getRnkList() {
		JSONObject object = new JSONObject();
		List<RankDto> list = adminMemberService.getRnkList();
		JSONArray array = new JSONArray();
		for (RankDto dto : list) {
			JSONObject rnk = new JSONObject();
			rnk.put("RNK_SQ", dto.getRnk_sq());
			rnk.put("RNK_NM", dto.getRnk_nm());
			array.put(rnk);
		}
		object.put("rnkList", array);
		return object.toString();
	}
}
