CREATE DATABASE HospitalDB;
GO
USE HospitalDB;
GO
CREATE TABLE Admin (
    admin_id INT PRIMARY KEY,
    name NVARCHAR(100)
);
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    name NVARCHAR(100),
    specialization NVARCHAR(100)
);
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name NVARCHAR(100),
    role NVARCHAR(100)
);
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    name NVARCHAR(100),
    age INT,
    gender NVARCHAR(10)
);
CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    room_type NVARCHAR(100),
    charges DECIMAL(10, 2)
);
CREATE TABLE Bill (
    bill_id INT PRIMARY KEY,
    patient_id INT FOREIGN KEY REFERENCES Patient(patient_id),
    room_id INT FOREIGN KEY REFERENCES Room(room_id),
    amount DECIMAL(10, 2)
);
CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT FOREIGN KEY REFERENCES Patient(patient_id),
    doctor_id INT FOREIGN KEY REFERENCES Doctor(doctor_id),
    appointment_date DATE
);
