package com.treeware.admin.member.dao;

import java.util.List;
import java.util.Map;

import com.treeware.admin.member.model.MemberDto;

public interface AdminMemberDao {
	public int register(MemberDto memberDto);
	public int modify(MemberDto memberDto);
	public int getMember(String id);
	public List<MemberDto> getMemberList();
	public MemberDto memberSearch(Map<String, String> map);
	public int deleteMember(String id);
	public int idSetup(Map<String, String> map);
	public int idCheck(String id);
}
