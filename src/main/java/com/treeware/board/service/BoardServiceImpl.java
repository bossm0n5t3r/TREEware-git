package com.treeware.board.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treeware.admin.board.dao.AdminBoardDao;
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

	@Override
	public int boardWrite(BoardDto boardDto) {
		SimpleDateFormat date = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
		boardDto.setBrd_dt(date.format (new Date()));
		boardDto.setBrd_fl_mnm("");
		boardDto.setBrd_fl_onm("");
		boardDto.setBrd_fl_rt("");
		return sqlSession.getMapper(BoardDao.class).boardWrite(boardDto);
	}

	@Override
	public int getNextSeq() {
		return sqlSession.getMapper(BoardDao.class).getNextSeq();
	}

	@Override
	public BoardDto boardView(int brd_sq) {
		return sqlSession.getMapper(BoardDao.class).boardView(brd_sq);
	}

	@Override
	public String getBoardEmpName(String emp_sq) {
		return sqlSession.getMapper(AdminBoardDao.class).getBoardEmpName(emp_sq);
	}

	@Override
	public List<BoardDto> boardSearch(Map<String, String> map) {
		return sqlSession.getMapper(BoardDao.class).boardSearch(map);
	}

}
