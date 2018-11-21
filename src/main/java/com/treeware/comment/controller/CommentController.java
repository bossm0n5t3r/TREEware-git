package com.treeware.comment.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.treeware.comment.model.RplDto;
import com.treeware.comment.service.CommentService;
import com.treeware.util.NumberCheck;

@Controller
@RequestMapping("/member/comment")
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	//	댓글 추가
	@RequestMapping(value="/add.tree", method=RequestMethod.POST)
	public @ResponseBody String add(@RequestParam Map<String, String> map) {
		// 1. RplDto 객체 생성
		RplDto rplDto = new RplDto();
		// 2. brd_sq, emp_sq, rpl_ctt 입력
		rplDto.setBrd_sq(NumberCheck.nullToZero(map.get("brd_sq")));
		rplDto.setEmp_sq(map.get("emp_sq"));
		rplDto.setRpl_ctt(map.get("rpl_ctt"));
		// 3. 댓글 DB에 추가
		commentService.add(rplDto);
		return "success";
	}
	
	//	댓글 지우기
	@RequestMapping(value="/delete.tree", method=RequestMethod.POST)
	public @ResponseBody String delete(@RequestParam Map<String, String> map) {
		commentService.delete(map);
		return "success";
	}
	
	//	해당 글의 댓글 가져오기
	@RequestMapping(value="/listComment.tree", method=RequestMethod.GET)
	public @ResponseBody String listComment(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		List<RplDto> list = commentService.listComment(map);
		JSONArray array = new JSONArray();
		if (list.size() != 0) {
			for (RplDto rpldto : list) {
				JSONObject dto = new JSONObject();
				dto.append("rpl_sq", rpldto.getRpl_sq());
				dto.append("brd_sq", rpldto.getBrd_sq());
				dto.append("emp_sq", rpldto.getEmp_sq());
				dto.append("emp_nm", rpldto.getEmp_nm());
				dto.append("rpl_ctt", rpldto.getRpl_ctt());
				dto.append("rpl_register", rpldto.getRpl_register());
				dto.append("rpl_edit", rpldto.getRpl_edit());
				dto.append("rpl_chkdlt", rpldto.getRpl_chkdlt());
				
				array.put(dto);
			}
		} else {
			JSONObject dto = new JSONObject();
			dto.append("rpl_sq", "");
			dto.append("brd_sq", "");
			dto.append("emp_sq", "");
			dto.append("emp_nm", "");
			dto.append("rpl_ctt", "현재 댓글이 없습니다.");
			dto.append("rpl_register", "");
			dto.append("rpl_edit", "");
			dto.append("rpl_chkdlt", "");
			
			array.put(dto);
		}
		object.put("commentList", array);			
		return object.toString();
	}
	
}
