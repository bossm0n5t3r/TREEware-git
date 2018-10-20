package com.treeware.board.service;

import java.util.List;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.board.model.BoardListDto;

public interface BoardService {

	List<BoardListDto> getBoardList();
	List<BoardDto> getBoardInfo(String bcode);
}
