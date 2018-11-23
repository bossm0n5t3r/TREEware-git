package com.treeware.admin.board.service;

import java.util.List;

import com.treeware.admin.board.model.*;

public interface AdminBoardService {
	
	public List<BoardListDto> getBrdList();
	public List<BoardTypeDto> getBtypeList();
	public List<CategoryDto> getCategoryList();
	public int register(BoardListDto boardListDto);
	
}
