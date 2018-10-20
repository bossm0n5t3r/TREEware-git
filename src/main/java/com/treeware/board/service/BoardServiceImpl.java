package com.treeware.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.admin.board.model.BoardListDto;
import com.treeware.board.dao.BoardDao;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardListDto> getBoardList() {
		return sqlSession.getMapper(BoardDao.class).getBoardList();
	}

	@Override
	public List<BoardDto> getBoardInfo(String bcode) {
		return sqlSession.getMapper(BoardDao.class).getBoardInfo(bcode);
	}

}
