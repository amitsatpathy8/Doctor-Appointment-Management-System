package com.dams.DoctorAppointmentManagementSystem.DTO;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Data
public class AvailableSlots {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int avid;
    private LocalDate slotStartingTime;
    private LocalDate slotEndingTime;
}
