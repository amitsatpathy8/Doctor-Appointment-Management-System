package com.dams.DoctorAppointmentManagementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dams.DoctorAppointmentManagementSystem.iotemplets.DoctorDetails;
import com.dams.DoctorAppointmentManagementSystem.iotemplets.DoctorLogin;

@Controller
public class DocotorController {

	@RequestMapping("/docSignup")
	public ModelAndView signupDoctor(@ModelAttribute DoctorDetails details) {
		System.out.println(details);
		DoctorLogin login = new DoctorLogin();
    	ModelAndView view = new ModelAndView("login");
    	view.addObject(login);
    	return view;
	}
	
	@RequestMapping("/validateLogin")
	public String loginValidation(@ModelAttribute DoctorLogin login) {
		System.out.println(login);
		return "doctorLogin";
	}
	
	@RequestMapping("/text")
	public ModelAndView test() {
		DoctorDetails details = new DoctorDetails();
		ModelAndView view = new ModelAndView("text");
		view.addObject(details);
		return view;
	}
}
