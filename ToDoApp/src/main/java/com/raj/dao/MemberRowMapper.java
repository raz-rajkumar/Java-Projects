package com.raj.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.raj.model.Member;

public class MemberRowMapper implements RowMapper<Member>{

	@Override
	public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
		Member m=new Member();
		m.setFname(rs.getString("fname"));
		m.setLname(rs.getString("lname"));
		m.setMail(rs.getString("mail"));
		m.setPhno(rs.getLong("phno"));
		m.setUsername(rs.getString("username"));
		m.setPassword(rs.getString("password"));
		return m;
	}
	
}
