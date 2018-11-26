package com.treeware.board.dao;

import java.util.List;
import java.util.Map;

import com.treeware.admin.board.model.BoardDetailDto;
import com.treeware.admin.board.model.BoardDto;

public interface BoardDao {
	
	public void updateHit(int brd_sq);
	public int write(BoardDto boardDto);
	public String getBoardName(Map<String, String> map);
	public BoardDetailDto viewArticle(int brd_sq);
	public List<BoardDetailDto> listArticle(Map<String, String> map);
	
}
