package com.treeware.admin.member.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.treeware.admin.member.dao.AdminMemberDao;
import com.treeware.admin.member.model.MemberDto;

public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberDao adminMemberDao;
	
	@Override
	public int register(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modify(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getMember(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDto getMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDto memberSearch(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMember(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int idSetup(Map<String, String> map) {
		return 0;
	}

	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
