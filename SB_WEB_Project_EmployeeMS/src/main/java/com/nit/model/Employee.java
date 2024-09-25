package com.nit.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee {
	private Integer id;
	private String name;
	private String address;
	private Double salary;
	public Employee(String name, String address, Double salary) {
		super();
		this.name = name;
		this.address = address;
		this.salary = salary;
	}
	
}
