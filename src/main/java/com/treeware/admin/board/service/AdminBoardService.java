package com.treeware.admin.board.service;

import java.util.List;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.board.model.BoardListDto;

public interface AdminBoardService {
	public int addBoard(BoardListDto boardListDto);
	public int getBoardCount(String bcode);
	List<BoardDto> boardViewsBcode(int bcode);
	List<BoardDto> boardViews();
	String getBoardEmpName(String emp_sq);
//	public int deleteBoard();
//	public int modifyBoard();
//	public int writePosts();
//	public int deletePosts();
//	public int modifyPosts();
//	public List<PostsDto> getPostsList();
//	public PostsDto getPosts();
}
