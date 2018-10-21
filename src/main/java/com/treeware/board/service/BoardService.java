package com.treeware.board.service;

import java.util.List;
import java.util.Map;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.board.model.BoardListDto;

public interface BoardService {

	List<BoardListDto> getBoardList();
	List<BoardDto> getBoardInfo(String bcode);
	int boardWrite(BoardDto boardDto);
	int getNextSeq();
	BoardDto boardView(int brd_sq);
	String getBoardEmpName(String emp_sq);
	List<BoardDto> boardSearch(Map<String, String> map);
}
