package com.treeware.email.service;

import java.util.List;
import java.util.Map;


import com.treeware.email.model.MailDto;

public interface EmailService {
	
	int sendMail(MailDto mailDto);
	List<MailDto> listMail(Map<String, String> map);
	MailDto viewMail(int ml_sq);
	int moveTrashMailbox(int ml_sq);
	List<MailDto> delivery(int ml_sq);

}
