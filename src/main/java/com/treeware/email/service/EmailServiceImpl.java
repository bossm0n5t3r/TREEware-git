package com.treeware.email.service;

import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.email.dao.EmailDao;
import com.treeware.email.model.MailDto;
import com.treeware.email.model.MailGroupDto;

@Service
public class EmailServiceImpl implements EmailService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int sendMail(MailDto mailDto) {
		int seq = sqlSession.getMapper(EmailDao.class).getNextSeq();
		mailDto.setMl_sq(seq);
		return sqlSession.getMapper(EmailDao.class).sendMail(mailDto);
	}

	@Override
	public List<MailDto> listMail(Map<String, String> map) {
		return sqlSession.getMapper(EmailDao.class).listMail(map);
	}

	@Override
	public MailDto viewMail(int ml_sq) {
		return sqlSession.getMapper(EmailDao.class).viewMail(ml_sq);
	}

	@Override
	public int moveTrashMailbox(Map<String, String> map) {
	
		
		return sqlSession.getMapper(EmailDao.class).moveTrashMailbox(map);
	}

	@Override
	public List<MailDto>delivery(int ml_sq) {
		return sqlSession.getMapper(EmailDao.class).delivery(ml_sq);
	}

	@Override
	public int addMailbox(MailGroupDto mailGroupDto) {
		int seq = sqlSession.getMapper(EmailDao.class).getEmailBoxNextSeq();
		mailGroupDto.setMl_grp_sq(seq);
		return sqlSession.getMapper(EmailDao.class).addMailbox(mailGroupDto);
	}

	@Override
	public List<MailGroupDto> listMailbox() {
		return sqlSession.getMapper(EmailDao.class).listMailbox();
	}

	@Override
	public List<MailGroupDto> addMailbox_list(Map<String, String> map) {
		return sqlSession.getMapper(EmailDao.class).addMailbox_list(map);
	}

	@Override
	public int deleteAll(Map<String, String> map) {
		return sqlSession.getMapper(EmailDao.class).deleteAll(map);
	}

	@Override
	public int delete(Map<String,String> map) {
		return sqlSession.getMapper(EmailDao.class).delete(map);
	}

	@Override
	public List<MailDto> memberSearch(Map<String, String> map) {
		return sqlSession.getMapper(EmailDao.class).memberSearch(map);
	}

	@Override
	public int readchange(int ml_sq) {
		return sqlSession.getMapper(EmailDao.class).readchange(ml_sq);
	}

	@Override
	public int noreadchange(int ml_sq) {
		return sqlSession.getMapper(EmailDao.class).noreadchange(ml_sq);
	}

	@Override
	public int moveMailbox(Map<String, String> map) {
		return sqlSession.getMapper(EmailDao.class).moveMailbox(map);
	}


	 
  
}