package com.treeware.email.dao;

import com.treeware.email.model.MailDto;

public interface EmailDao {
	
	int getNextSeq();
	int sendMail(MailDto mailDto);

}
