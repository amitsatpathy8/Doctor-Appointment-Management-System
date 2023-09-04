package com.dams.DoctorAppointmentManagementSystem.iotemplets;

public class DoctorLogin {
	private String email;
	private String pass;
	@Override
	public String toString() {
		return "DoctorLogin [email=" + email + ", pass=" + pass + "]";
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
