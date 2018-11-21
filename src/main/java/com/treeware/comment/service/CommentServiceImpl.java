package com.treeware.comment.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.comment.dao.CommentDao;
import com.treeware.comment.model.RplDto;
import com.treeware.common.dao.CommonDao;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int add(RplDto rplDto) {
		int rpl_sq = sqlSession.getMapper(CommonDao.class).getNextRplSeq();
		rplDto.setRpl_sq(rpl_sq);
		return sqlSession.getMapper(CommentDao.class).add(rplDto) != 0 ? rpl_sq : 0;
	}

	@Override
	public int delete(Map<String, String> map) {
		return sqlSession.getMapper(CommentDao.class).delete(map);
	}
	
	@Override
	public List<RplDto> listComment(Map<String, String> map) {
		return sqlSession.getMapper(CommentDao.class).listComment(map);
	}
	
}
