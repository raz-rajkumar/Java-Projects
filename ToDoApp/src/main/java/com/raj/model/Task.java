package com.raj.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Task {
	private String username;
	private int id;
	private String task;
	private String date;
	private String status;
}
