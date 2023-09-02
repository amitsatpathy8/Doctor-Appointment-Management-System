package com.dams.DoctorAppointmentManagementSystem.DTO;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Data
public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int apid;
    @ManyToOne
    @JoinColumn
    private Doctor doctor;
    private String pname;
    private long pmobile;
    private String pemail;
    private String pstate;
    private String pcity;
    private LocalDate adate;
    private String slotChosen;
    private int status;
}
