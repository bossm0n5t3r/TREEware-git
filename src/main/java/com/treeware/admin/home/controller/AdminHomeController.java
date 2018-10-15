package com.treeware.admin.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/home")
public class AdminHomeController {

	// 관리자 메인 페이지
	@RequestMapping("/main.tree")
	public String main() {
		return "admin/home/main";
	}
}
