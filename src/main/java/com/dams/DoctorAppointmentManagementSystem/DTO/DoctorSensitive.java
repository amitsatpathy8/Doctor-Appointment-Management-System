package com.dams.DoctorAppointmentManagementSystem.DTO;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class DoctorSensitive {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int dsid;
    @Column(unique = true,nullable = false)
    private String email;
    @Column(nullable = false)
    private String password;
    private int status;
}
