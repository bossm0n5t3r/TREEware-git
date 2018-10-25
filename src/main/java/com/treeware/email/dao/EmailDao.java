package com.treeware.email.dao;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.EmployeeDto;
import com.treeware.email.model.MailDto;
import com.treeware.email.model.MailGroupDto;

public interface EmailDao {
	
	int getNextSeq();
	int sendMail(MailDto mailDto);
	List<MailDto> listMail(Map<String, String> map);
	MailDto viewMail(int ml_sq);
	int moveTrashMailbox(Map<String, String> map);
	List<MailDto> delivery(int ml_sq);
	int getEmailBoxNextSeq();
	int addMailbox(MailGroupDto mailGroupDto);
	List<MailGroupDto> listMailbox();
	List<MailGroupDto> addMailbox_list(Map<String,String> map);
	int deleteAll(Map<String,String> map);
	int delete(Map<String,String> map);
	List<MailDto> memberSearch(Map<String, String> map);
	int readchange(int ml_sq);
	int noreadchange(int ml_sq);
	int moveMailbox(Map<String, String> map);
}
