package com.treeware.board.dao;

import java.util.List;
import java.util.Map;

import com.treeware.admin.board.model.BoardDto;

public interface BoardDao {
	
	public int write(BoardDto boardDto);
	public String getBoardName(Map<String, String> map);
	public List<BoardDto> listArticle(Map<String, String> map);
	
}
