package com.treeware.admin.board.service;

import java.util.List;

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
	public List<BoardListDto> getBrdList() {
		return sqlSession.getMapper(AdminBoardDao.class).getBrdList();
	}

}
