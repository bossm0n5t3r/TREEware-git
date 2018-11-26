package com.treeware.board.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.board.model.BoardDetailDto;
import com.treeware.admin.board.model.BoardDto;
import com.treeware.board.dao.BoardDao;
import com.treeware.common.dao.CommonDao;
import com.treeware.util.TreewareConstance;

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

	@Override
	public String getBoardName(Map<String, String> map) {
		return sqlSession.getMapper(BoardDao.class).getBoardName(map);
	}
	
	@Override
	public BoardDetailDto viewArticle(int brd_sq) {
		sqlSession.getMapper(BoardDao.class).updateHit(brd_sq);
		return sqlSession.getMapper(BoardDao.class).viewArticle(brd_sq);
	}

	@Override
	public List<BoardDetailDto> listArticle(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = TreewareConstance.ARTICLE_COUNT * pg;
		int start = end - TreewareConstance.ARTICLE_COUNT;
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(BoardDao.class).listArticle(map);
	}

}
