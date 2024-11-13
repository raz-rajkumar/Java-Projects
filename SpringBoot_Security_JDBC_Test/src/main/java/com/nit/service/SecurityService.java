package com.nit.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.nit.entiry.UserEntity;
import com.nit.repository.SecurityRepository;

@Service
public class SecurityService implements UserDetailsService{
	@Autowired
	private SecurityRepository repository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Optional<UserEntity> optUser= repository.findByUsername(username);
		if(optUser.isPresent())return optUser.get();
		throw new UsernameNotFoundException("User not found");
	}
	
}
