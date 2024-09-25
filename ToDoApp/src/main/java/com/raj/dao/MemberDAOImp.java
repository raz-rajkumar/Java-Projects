package com.raj.dao;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import static com.raj.constant.MemberConstant.*;

import java.util.List;

import com.raj.model.Member;

public class MemberDAOImp extends JdbcDaoSupport implements MemberDAO {
	private RowMapper<Member> rowMapper;

	public void setRowMapper(RowMapper<Member> rowMapper) {
		this.rowMapper = rowMapper;
	}

	@Override
	public void addMember(Member m) {
		getJdbcTemplate().update(ADDMEMBER, m.getFname(), m.getLname(), m.getMail(), m.getPhno(), m.getUsername(),
				m.getPassword());
	}

	@Override
	public void updateMember(Member m) {
		getJdbcTemplate().update(UPDATEMEMBER, m.getMail(), m.getPhno(), m.getUsername(), m.getPassword());
	}

	@Override
	public void deleteMember(String username) {
		getJdbcTemplate().update(DELETEMEMBER, username);
	}

	@Override
	public Member viewMember(String username, String password) {
		List<Member> mem = getJdbcTemplate().query(VIEWMEMBER, rowMapper, username, password);
		if (mem.isEmpty())
			return null;
		else
			return mem.get(0);
	}

	@Override
	public Member view(String username) {
		
		return getJdbcTemplate().query(VIEW, rowMapper,username).get(0);
	}

}
