package com.treeware.admin.board.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.board.dao.AdminBoardDao;
import com.treeware.admin.board.model.BoardListDto;

@Service
public class AdminBoardServiceImpl implements AdminBoardService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int addBoard(BoardListDto boardListDto) {
		int bcode = getBoardCount() + 1;
		boardListDto.setBcode(bcode);
		return sqlSession.getMapper(AdminBoardDao.class).addBoard(boardListDto);
	}

	@Override
	public int getBoardCount() {
		return sqlSession.getMapper(AdminBoardDao.class).getBoardCount();
	}

}
