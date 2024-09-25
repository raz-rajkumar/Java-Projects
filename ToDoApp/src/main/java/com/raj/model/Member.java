package com.raj.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private String fname;
	private String lname;
	private String mail;
	private Long phno;	
	private String username;
	private String password;
}
