package com.nit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.nit.model.Employee;
import static com.nit.constant.Constant.INSERT;
import static com.nit.constant.Constant.UPDATE;
import static com.nit.constant.Constant.DELETE;
import static com.nit.constant.Constant.GET_ALL;
import static com.nit.constant.Constant.GET_ONE;
@Component
public class EmployeeDAOImp implements EmployeeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private EmployeeRowMapper rowMapper;
	
	@Override
	public void saveEmployee(Employee emp) {
		jdbcTemplate.update(INSERT,emp.getName(),emp.getAddress(),emp.getSalary());
	}

	@Override
	public void updateEmployee(Employee emp) {
		jdbcTemplate.update(UPDATE,emp.getName(),emp.getAddress(),emp.getSalary(),emp.getId());
	}

	@Override
	public void deleteEmployee(Integer id) {
		jdbcTemplate.update(DELETE,id);
	}

	@Override
	public Employee getEmployee(Integer id) {
		return jdbcTemplate.query(GET_ONE, rowMapper,id).get(0);
	}

	@Override
	public List<Employee> getAllEmployees() {
		return jdbcTemplate.query(GET_ALL, rowMapper);
	}

}
