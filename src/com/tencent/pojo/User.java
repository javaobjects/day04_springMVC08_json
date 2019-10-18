package com.tencent.pojo;

public class User {

	private String username;
	private String password;
	
	private String telephone;
	private Integer age;
	private String sex;
	private String address;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public User() {
		super();
	}
	public User(String username, String password, String telephone, Integer age, String sex, String address) {
		super();
		this.username = username;
		this.password = password;
		this.telephone = telephone;
		this.age = age;
		this.sex = sex;
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", telephone=" + telephone + ", age=" + age
				+ ", sex=" + sex + ", address=" + address + "]";
	}
	
	
}
