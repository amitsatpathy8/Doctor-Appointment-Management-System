package com.dams.DoctorAppointmentManagementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dams.DoctorAppointmentManagementSystem.iotemplets.DoctorDetails;
import com.dams.DoctorAppointmentManagementSystem.iotemplets.DoctorLogin;

@Controller
public class URINavigator {
    @RequestMapping("/")
    public String homePage(){
        return "index";
    }
    
    @RequestMapping("/doctorSignUp")
    public ModelAndView doctorSignUpPage() {
    	DoctorDetails details = new DoctorDetails();
    	ModelAndView view = new ModelAndView("doctor_signup");
    	view.addObject(details);
    	return view;
    }
    
    @RequestMapping("/doctorLogin")
    public ModelAndView doctorLogin() {
    	DoctorLogin login = new DoctorLogin();
    	ModelAndView view = new ModelAndView("login");
    	view.addObject(login);
    	return view;
    }
}
