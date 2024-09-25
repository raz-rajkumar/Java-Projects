package com.raj.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.raj.model.Task;

public class TaskRowMapper implements RowMapper<Task> {

	@Override
	public Task mapRow(ResultSet rs, int rowNum) throws SQLException {
		Task t = new Task();
		t.setUsername(rs.getString("username"));
		t.setId(rs.getInt("id"));
		t.setTask(rs.getString("task"));
		t.setStatus(rs.getString("status"));
		t.setDate(rs.getString("date"));

		return t;
	}

}
