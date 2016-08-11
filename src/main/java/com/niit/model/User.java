package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;


@Entity(name="User")
@Component
public class User {
	@Id
	private String name;
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}



