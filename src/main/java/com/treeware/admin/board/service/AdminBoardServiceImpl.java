package com.treeware.admin.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.board.dao.AdminBoardDao;
import com.treeware.admin.board.model.*;
import com.treeware.common.dao.CommonDao;

@Service
public class AdminBoardServiceImpl implements AdminBoardService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardListDto> getBrdList() {
		return sqlSession.getMapper(AdminBoardDao.class).getBrdList();
	}

	@Override
	public List<BoardTypeDto> getBtypeList() {
		return sqlSession.getMapper(AdminBoardDao.class).getBtypeList();
	}

	@Override
	public List<CategoryDto> getCategoryList() {
		return sqlSession.getMapper(AdminBoardDao.class).getCategoryList();
	}
	
	@Override
	public int register(BoardListDto boardListDto) {
		int bcode = sqlSession.getMapper(CommonDao.class).getNextBcodeSeq();
		boardListDto.setBcode(bcode);
		return sqlSession.getMapper(AdminBoardDao.class).register(boardListDto) != 0 ? bcode : 0;
	}

}
