package com.treeware.admin.board.dao;

import java.util.List;

import com.treeware.admin.board.model.BoardListDto;
import com.treeware.admin.board.model.BoardTypeDto;

public interface AdminBoardDao {
	List<BoardListDto> getBrdList();
	List<BoardTypeDto> getBtypeList();
}
