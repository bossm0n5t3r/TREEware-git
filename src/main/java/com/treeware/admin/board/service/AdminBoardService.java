package com.treeware.admin.board.service;

import java.util.List;

import com.treeware.admin.board.model.BoardListDto;
import com.treeware.admin.board.model.BoardTypeDto;

public interface AdminBoardService {
	List<BoardListDto> getBrdList();
	List<BoardTypeDto> getBtypeList();
}
