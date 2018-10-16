package com.treeware.commute.controller;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.treeware.admin.commute.model.CommuteDto;
import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.commute.service.CommuteService;
import com.treeware.util.TreewareConstance;

@Controller
@RequestMapping("/member/commute")
public class CommuteController {

	private String time;

	@Autowired
	private CommuteService commuteService;

	// 근태관리 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "member/commute/main";
	}

	// 현재 시간 보내주기
	// TODO 하지만 시간마다 계속 new 객체 생성... 좋은 방법은 없을까?
	@RequestMapping("/livetime.tree")
	public @ResponseBody String livetime() {
		JSONObject object = new JSONObject();
		time = new SimpleDateFormat("HH:mm:ss").format(new Date());
		object.put("time", time);
		return object.toString();
	}

	// 오늘 근태 현황 가져오기
	@RequestMapping("/today.tree")
	public @ResponseBody String today(HttpSession session) {
		String today = TreewareConstance.TODAY;
		EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("userInfo");
		String emp_sq = employeeDto.getEmp_sq();
		Map<String, String> map = new HashMap<String, String>();
		map.put("emp_sq", emp_sq);
		map.put("today", today);
		int cnt = commuteService.checkToday(map);
		JSONObject object = new JSONObject();
		if (cnt == 0) {
			object.put("CMT_SRT_TM", "-");
			object.put("CMT_WOUT_TM", "-");
			object.put("CMT_CB_TM", "-");
			object.put("CMT_END_TM", "-");
		} else {
			int cmt_sq = commuteService.getCommuteSq(map);
			CommuteDto commuteDto = commuteService.today(cmt_sq);
			object.put("CMT_SRT_TM", commuteDto.getCmt_str_tm() == null ? "-" : commuteDto.getCmt_str_tm());
			object.put("CMT_WOUT_TM", commuteDto.getCmt_wout_tm() == null ? "-" : commuteDto.getCmt_wout_tm());
			object.put("CMT_CB_TM", commuteDto.getCmt_cb_tm() == null ? "-" : commuteDto.getCmt_cb_tm());
			object.put("CMT_END_TM", commuteDto.getCmt_end_tm() == null ? "-" : commuteDto.getCmt_end_tm());
		}
		return object.toString();
	}

	// 출근하기
	@RequestMapping("/punchIn.tree")
	public @ResponseBody String punchIn(HttpServletRequest request, HttpSession session) {
		JSONObject object = new JSONObject();
		String today = TreewareConstance.TODAY;
		String emp_sq = ((EmployeeDto) session.getAttribute("userInfo")).getEmp_sq();
		String cmt_ip = request.getRemoteAddr();
		Map<String, String> map = new HashMap<String, String>();
		map.put("emp_sq", emp_sq);
		map.put("today", today);
		int cnt = commuteService.checkToday(map);
		if (cnt != 0) {
			int cmt_sq = commuteService.getCommuteSq(map);
			CommuteDto commuteDto = commuteService.today(cmt_sq);
			object.put("CMT_SRT_TM", commuteDto.getCmt_str_tm());
		} else {
			int cmt_sq = commuteService.getNextCommuteSq(map);
			CommuteDto commuteDto = new CommuteDto();
			commuteDto.setCmt_sq(cmt_sq);
			commuteDto.setEmp_sq(emp_sq);
			commuteDto.setCmt_ip(cmt_ip);
			commuteDto.setCmt_date(today);
			commuteDto.setCmt_str_tm(time);
			int check = commuteService.punchIn(commuteDto);
			if (check != 0) {
				object.put("CMT_SRT_TM", commuteDto.getCmt_str_tm());
			}
		}
		return object.toString();
	}

	// 외근하기
	@RequestMapping("/workOut.tree")
	public @ResponseBody String workOut(HttpSession session) {
		JSONObject object = new JSONObject();
		String today = TreewareConstance.TODAY;
		String emp_sq = ((EmployeeDto) session.getAttribute("userInfo")).getEmp_sq();
		Map<String, String> map = new HashMap<String, String>();
		map.put("emp_sq", emp_sq);
		map.put("today", today);
		int cnt = commuteService.checkToday(map);
		if (cnt != 0) {
			int cmt_sq = commuteService.getCommuteSq(map);
			CommuteDto commuteDto = commuteService.today(cmt_sq);
			if (commuteDto.getCmt_wout_tm() == null) {
				commuteDto.setCmt_wout_tm(time);
				int check = commuteService.workOut(commuteDto);
				if (check != 0) {
					object.put("CMT_WOUT_TM", commuteDto.getCmt_wout_tm());
				}
			} else {
				object.put("CMT_WOUT_TM", commuteDto.getCmt_wout_tm());
			}
		}
		return object.toString();
	}

	// 복귀하기
	@RequestMapping("/comeBack.tree")
	public @ResponseBody String comeBack(HttpSession session) {
		JSONObject object = new JSONObject();
		String today = TreewareConstance.TODAY;
		String emp_sq = ((EmployeeDto) session.getAttribute("userInfo")).getEmp_sq();
		Map<String, String> map = new HashMap<String, String>();
		map.put("emp_sq", emp_sq);
		map.put("today", today);
		int cnt = commuteService.checkToday(map);
		if (cnt != 0) {
			int cmt_sq = commuteService.getCommuteSq(map);
			CommuteDto commuteDto = commuteService.today(cmt_sq);
			if (commuteDto.getCmt_cb_tm() == null) {
				commuteDto.setCmt_cb_tm(time);
				int check = commuteService.comeBack(commuteDto);
				if (check != 0) {
					object.put("CMT_CB_TM", commuteDto.getCmt_cb_tm());
				}
			} else {
				object.put("CMT_CB_TM", commuteDto.getCmt_cb_tm());
			}
		}
		return object.toString();
	}

	// 퇴근하기
	@RequestMapping("/punchOut.tree")
	public @ResponseBody String punchOut(HttpSession session) {
		JSONObject object = new JSONObject();
		String today = TreewareConstance.TODAY;
		String emp_sq = ((EmployeeDto) session.getAttribute("userInfo")).getEmp_sq();
		Map<String, String> map = new HashMap<String, String>();
		map.put("emp_sq", emp_sq);
		map.put("today", today);
		int cnt = commuteService.checkToday(map);
		if (cnt != 0) {
			int cmt_sq = commuteService.getCommuteSq(map);
			CommuteDto commuteDto = commuteService.today(cmt_sq);
			if (commuteDto.getCmt_end_tm() == null) {
				commuteDto.setCmt_end_tm(time);
				int check = commuteService.punchOut(commuteDto);
				if (check != 0) {
					object.put("CMT_END_TM", commuteDto.getCmt_end_tm());
				}
			} else {
				object.put("CMT_END_TM", commuteDto.getCmt_end_tm());
			}
		}
		return object.toString();
	}
}
