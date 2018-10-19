package com.treeware.email.service;

import com.treeware.email.model.MailDto;

public interface EmailService {
	
	int sendMail(MailDto mailDto);


}
