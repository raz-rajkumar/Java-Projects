package com.raj.dao;

import com.raj.model.Member;

public interface MemberDAO {
	void addMember(Member m);
	void updateMember(Member m);
	void deleteMember(String username);
	Member viewMember(String username,String password);
	Member view(String username);
}
