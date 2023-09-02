package com.dams.DoctorAppointmentManagementSystem.iotemplets;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

public class DoctorDetails {
	private String dname;
	private String demail;
	private long dmobile;
	private String apmtCharge;
	private String gender;
	private String state;
	private String cityName;
	private String duration;
	private String availability;
	@Override
	public String toString() {
		return "DoctorDetails [dname=" + dname + ", pemail=" + demail + ", pmobile=" + dmobile + ", apmtCharge="
				+ apmtCharge + ", gender=" + gender + ", state=" + state + ", cityName=" + cityName + ", duration="
				+ duration + ", availability=" + availability + "]\n";
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDemail() {
		return demail;
	}
	public void setDemail(String demail) {
		this.demail = demail;
	}
	public long getDmobile() {
		return dmobile;
	}
	public void setDmobile(long dmobile) {
		this.dmobile = dmobile;
	}
	public String getApmtCharge() {
		return apmtCharge;
	}
	public void setApmtCharge(String apmtCharge) {
		this.apmtCharge = apmtCharge;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	
	
	
	
	
}
