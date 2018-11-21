package com.treeware.comment.service;

import java.util.List;
import java.util.Map;

import com.treeware.comment.model.RplDto;

public interface CommentService {

	public int add(RplDto rplDto);
	public int delete(Map<String, String> map);
	public List<RplDto> listComment(Map<String, String> map);
	
}
