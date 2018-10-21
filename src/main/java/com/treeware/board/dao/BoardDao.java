package com.treeware.board.dao;

import java.util.List;
import java.util.Map;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.board.model.BoardListDto;

public interface BoardDao {
	List<BoardListDto> getBoardList();
	List<BoardDto> getBoardInfo(String bcode);
	int boardWrite(BoardDto boardDto);
	int getNextSeq();
	BoardDto boardView(int brd_sq);
	List<BoardDto> boardSearch(Map<String, String> map);
}
