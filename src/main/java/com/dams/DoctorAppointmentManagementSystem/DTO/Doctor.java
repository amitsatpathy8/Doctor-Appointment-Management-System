package com.dams.DoctorAppointmentManagementSystem.DTO;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int did;
    private String dname;
    @Column(unique = true,nullable = false)
    private String email;
    private double apmtCharge;
    private String gender;
    private String state;
    private String cityName;
    @OneToMany
    private List<AvailableSlots> availability;
    @OneToMany(mappedBy = "doctor")
    private List<Appointment> appointments;

}
