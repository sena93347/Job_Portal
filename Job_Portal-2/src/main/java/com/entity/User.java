package com.entity;

public class User {
	
@Override
	public String toString() {
		return "user [email=" + email +  "UserName=" + userName
				+ ", Password=" + password  + ", qualification=" + qualification  + ", role=" + role + "]";
	}

private int id;
private	String email , userName,  password , qualification ,role ;
public int getId() {
	return id;
}

public User() {
	super();
	// TODO Auto-generated constructor stub
}

public User(String email, String userName, String password, String qualification, String role) {
	super();
	this.email = email;
	this.userName = userName;
	this.password = password;
	this.qualification = qualification;
	this.role = role;
}

public void setId(int id) {
	this.id = id;
}


public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getQualification() {
	return qualification;
}
public void setQualification(String qualification) {
	this.qualification = qualification;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}


}

