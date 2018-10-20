package com.treeware.admin.board.dao;

import com.treeware.admin.board.model.BoardListDto;

public interface AdminBoardDao {

	public int addBoard(BoardListDto boardListDto);
	public int getBoardCount();
	public int deleteBoard();
	public int modifyBoard();
	public int writePosts();
	public int deletePosts();
	public int modifyPosts();
//	public List<PostsDto> getPostsList();
//	public PostsDto getPosts();
}
