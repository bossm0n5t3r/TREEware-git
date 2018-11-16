package com.treeware.board.service;

import java.util.List;
import java.util.Map;

import com.treeware.admin.board.model.BoardDto;

public interface BoardService {

	public int write(BoardDto boardDto);
	public String getBoardName(Map<String, String> map);
	public List<BoardDto> listArticle(Map<String, String> map);
	
}
