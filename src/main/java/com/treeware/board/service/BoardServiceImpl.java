package com.treeware.board.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.board.model.BoardDto;
import com.treeware.board.dao.BoardDao;
import com.treeware.common.dao.CommonDao;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int write(BoardDto boardDto) {
		int brdSq = sqlSession.getMapper(CommonDao.class).getNextBrdSeq();
		boardDto.setBrd_sq(brdSq);
		return sqlSession.getMapper(BoardDao.class).write(boardDto);
	}

}
