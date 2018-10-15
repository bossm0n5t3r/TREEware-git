package com.treeware.member.controller;

import java.util.Map;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.member.service.MemberService;

@Controller
@RequestMapping("/member/home")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 로그인
	@RequestMapping(value="/login.tree", method=RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> map, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		String path = "";
		String id = map.get("id");
		String loginOk = map.get("autoLogin");
		String check = id.substring(0, 4);
		
		EmployeeDto employeeDto = memberService.login(map);
		
		if (employeeDto != null) {
			if ("loginOk".equals(loginOk)) {
				Cookie cookie = new Cookie("LOGIN_ID", id);
				cookie.setPath(request.getContextPath());
				cookie.setMaxAge(60*60*24);
				response.addCookie(cookie);
			} else {
				Cookie [] cookies = request.getCookies();
				if (cookies != null) {
					for (Cookie cookie : cookies) {
						if ("LOGIN_ID".equals(cookie.getName())) {
							cookie.setMaxAge(0);
							response.addCookie(cookie);
							break;
						}
					}
				}
			}
			session.setAttribute("userInfo", employeeDto);
			if ("TREE".equals(check)) {
				path = "redirect:/idsetup.jsp";
			} else {
				int PMS_SQ = employeeDto.getPms_sq();
				if (PMS_SQ == 1) {
					path = "member/home/main";
				} else if (PMS_SQ == 2) {
					path = "admin/home/main";
				}
			}
		}		
		mav.setViewName(path);
		return mav;
	}
	
	// 로그아웃
	@RequestMapping(value="/logout.tree", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("userInfo");
		return "redirect:/index.jsp";
	}
	
	
	// 관리자에게 문의하기
	@RequestMapping(value="/askform.tree", method=RequestMethod.GET)
	public String mvAskform() {
		return "redirect:/askform.jsp";
	}
	
	// 회원 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "member/home/main";
	}
	
}
