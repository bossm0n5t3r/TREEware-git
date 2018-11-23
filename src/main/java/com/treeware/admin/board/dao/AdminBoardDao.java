package com.treeware.admin.board.dao;

import java.util.List;

import com.treeware.admin.board.model.*;

public interface AdminBoardDao {
	
	public List<BoardListDetailDto> getBrdList();
	public List<BoardTypeDto> getBtypeList();
	public List<CategoryDto> getCategoryList();
	public int register(BoardListDto boardListDto);
	
}
