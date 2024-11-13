package com.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nit.entity.Employee;
import com.nit.repository.EmployeeRepository;

@RestController
public class EmployeeController {
	@Autowired
	private EmployeeRepository repository;
	
	
	@GetMapping("/allEmployee")
	public List<Employee> allEmployees()
	{
		return repository.findAll();
	}
}
