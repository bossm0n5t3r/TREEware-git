package com.treeware.email.dao;

import java.util.List;
import java.util.Map;

import com.treeware.email.model.MailDto;

public interface EmailDao {
	
	int getNextSeq();
	int sendMail(MailDto mailDto);
	List<MailDto> listMail(Map<String, String> map);
	MailDto viewMail(int ml_sq);

}
