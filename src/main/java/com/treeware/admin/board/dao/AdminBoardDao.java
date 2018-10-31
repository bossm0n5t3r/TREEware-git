package com.treeware.admin.board.dao;

import java.util.List;

import com.treeware.admin.board.model.BoardListDto;

public interface AdminBoardDao {
	List<BoardListDto> getBrdList();
}
