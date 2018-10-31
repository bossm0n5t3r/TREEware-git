package com.treeware.admin.board.controller;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.treeware.admin.board.model.BoardListDto;
import com.treeware.admin.board.service.AdminBoardService;

@Controller
@RequestMapping("/admin/board")
public class AdminBoardController {

	@Autowired
	private AdminBoardService adminBoardService;
	
	//	게시판 종류 가져가기
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
}
