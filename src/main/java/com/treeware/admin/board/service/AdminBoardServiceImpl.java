package com.treeware.admin.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.board.dao.AdminBoardDao;
import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.board.model.BoardListDto;

@Service
public class AdminBoardServiceImpl implements AdminBoardService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int addBoard(BoardListDto boardListDto) {
		return sqlSession.getMapper(AdminBoardDao.class).addBoard(boardListDto);
	}

	@Override
	public int getBoardCount(String bcode) {
		return sqlSession.getMapper(AdminBoardDao.class).getBoardCount(bcode);
	}

	@Override
	public List<BoardDto> boardViewsBcode(int bcode) {
		return sqlSession.getMapper(AdminBoardDao.class).boardViewsBcode(bcode);
	}

	@Override
	public List<BoardDto> boardViews() {
		return sqlSession.getMapper(AdminBoardDao.class).boardViews();
	}

	@Override
	public String getBoardEmpName(String emp_sq) {
		return sqlSession.getMapper(AdminBoardDao.class).getBoardEmpName(emp_sq);
	}



}
