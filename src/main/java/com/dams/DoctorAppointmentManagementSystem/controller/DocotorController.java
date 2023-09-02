package com.dams.DoctorAppointmentManagementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dams.DoctorAppointmentManagementSystem.iotemplets.DoctorDetails;

@Controller
public class DocotorController {

	@RequestMapping("/docSignup")
	public String signupDoctor(@ModelAttribute DoctorDetails details) {
		System.out.println(details);
		return "index";
	}
	
	@RequestMapping("/text")
	public ModelAndView test() {
		DoctorDetails details = new DoctorDetails();
		ModelAndView view = new ModelAndView("text");
		view.addObject(details);
		return view;
	}
}
