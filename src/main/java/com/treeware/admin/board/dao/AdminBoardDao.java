package com.treeware.admin.board.dao;

public interface AdminBoardDao {

	public int addBoard();
	public int deleteBoard();
	public int modifyBoard();
	public int writePosts();
	public int deletePosts();
	public int modifyPosts();
//	public List<PostsDto> getPostsList();
//	public PostsDto getPosts();
}
