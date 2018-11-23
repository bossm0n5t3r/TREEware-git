package com.treeware.admin.board.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.treeware.admin.board.model.*;
import com.treeware.admin.board.service.AdminBoardService;
import com.treeware.util.NumberCheck;

@Controller
@RequestMapping("/admin/board")
public class AdminBoardController {

	@Autowired
	private AdminBoardService adminBoardService;
	
	//	관리자 게시판 main 이동
	@RequestMapping(value="/main.tree", method=RequestMethod.GET)
	public String main() {
		return "admin/board/main";
	}
	
	//	관리자 게시판 register 이동
	@RequestMapping(value="/register.tree", method=RequestMethod.GET)
	public String register() {
		return "admin/board/register";
	}
	
	//	게시판 리스트 가져가기
	//TODO 쓰기권한, 읽기권한 추가 수정
	@RequestMapping(value="/getBrdList.tree", method=RequestMethod.GET)
	public @ResponseBody String getBrdList() {
		JSONObject object = new JSONObject();
		JSONArray array = new JSONArray();
		List <BoardListDto> list = adminBoardService.getBrdList();
		for (BoardListDto dto : list) {
			JSONObject brdList = new JSONObject();
			brdList.put("BCODE", dto.getBcode());
			brdList.put("BNAME", dto.getBname());
			brdList.put("BTYPE", dto.getBtype());
			brdList.put("CCODE", dto.getCcode());
			array.put(brdList);
		}
		object.put("brdList", array);
		return object.toString();
	}

	//	게시판 종류 가져가기
	@RequestMapping(value="/getBtypeList.tree", method=RequestMethod.GET)
	public @ResponseBody String getBtypeList() {
		JSONObject object = new JSONObject();
		List<BoardTypeDto> list = adminBoardService.getBtypeList();
		JSONArray array = new JSONArray();
		for (BoardTypeDto dto : list) {
			JSONObject btype = new JSONObject();
			btype.put("BTYPE", dto.getBtype());
			btype.put("BTYPE_NAME", dto.getBtype_name());
			array.put(btype);
		}
		object.put("btypeList", array);
		return object.toString();
	}
	
	//	카테고리 종류 가져가기
	@RequestMapping(value="/getCategoryList.tree", method=RequestMethod.GET)
	public @ResponseBody String getCategoryList() {
		JSONObject object = new JSONObject();
		List<CategoryDto> list = adminBoardService.getCategoryList();
		JSONArray array = new JSONArray();
		for (CategoryDto dto : list) {
			JSONObject ctgry = new JSONObject();
			ctgry.put("CCODE", dto.getCcode());
			ctgry.put("CNAME", dto.getCname());
			array.put(ctgry);
		}
		object.put("categoryList", array);
		return object.toString();
	}
	
	//	게시판 등록
	@RequestMapping(value="/register.tree", method=RequestMethod.POST)
	public @ResponseBody String register(@RequestParam Map<String, String> map) {
		BoardListDto boardListDto = new BoardListDto();
		boardListDto.setBname(map.get("bname"));
		boardListDto.setBtype(NumberCheck.nullToOne(map.get("btype")));
		boardListDto.setCcode(NumberCheck.nullToZero(map.get("ccode")));
		adminBoardService.register(boardListDto);
		return "success";
	}
}
