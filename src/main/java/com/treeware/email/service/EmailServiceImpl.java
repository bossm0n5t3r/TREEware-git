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

import com.treeware.email.dao.EmailDao;
import com.treeware.email.model.MailDto;

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
	public int deleteMail(int ml_sq) {
		return sqlSession.getMapper(EmailDao.class).deleteMail(ml_sq);
	}
	
	 
  
}