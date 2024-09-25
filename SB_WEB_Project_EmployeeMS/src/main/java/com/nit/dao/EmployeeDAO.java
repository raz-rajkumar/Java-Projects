package com.nit.dao;

import java.util.List;

import com.nit.model.Employee;

public interface EmployeeDAO {
	void saveEmployee(Employee emp);
	void updateEmployee(Employee emp);
	void deleteEmployee(Integer id);
	Employee getEmployee(Integer id);
	List<Employee> getAllEmployees();
}
