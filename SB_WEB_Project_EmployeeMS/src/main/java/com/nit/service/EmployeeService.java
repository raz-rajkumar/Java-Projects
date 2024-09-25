package com.nit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.dao.EmployeeDAO;
import com.nit.model.Employee;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeDAO dao;
	
	public void saveEmployee(Employee emp) {
		dao.saveEmployee(emp);
	}
	
	public void updateEmployee(Employee emp) {
		dao.updateEmployee(emp);
	}
	
	public void deleteEmployee(Integer id) {
		dao.deleteEmployee(id);
	}
	
	
	public Employee getEmployee(Integer id) {
		return dao.getEmployee(id);
	}
	
	public List<Employee> getAllEmployees() {
		return dao.getAllEmployees();
	}
}
