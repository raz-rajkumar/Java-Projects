package com.nit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.entity.Employee;
import com.nit.repository.EmployeeRepository;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeRepository repository;
	
	public void saveEmployee(Employee emp) {
		repository.save(emp);
	}
	
	public void updateEmployee(Employee emp) {
		repository.save(emp);
	}
	
	public void deleteEmployee(Integer id) {
		repository.deleteById(id);
	}
	
	
	public Employee getEmployee(Integer id) {
		return repository.findById(id).get();
	}
	
	public List<Employee> getAllEmployees() {
		return repository.findAll();
	}
}
