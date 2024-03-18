package com.doctorapp.exception;

public class DoctorNotFoundExceptions extends Exception{
    public DoctorNotFoundExceptions() {
    }

    public DoctorNotFoundExceptions(String message) {
        super(message);
    }
}
