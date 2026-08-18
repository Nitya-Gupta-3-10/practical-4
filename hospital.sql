create database Hospital;
use Hospital;
create table patient (patient_id int primary key,name varchar(80) not null,dob varchar(60),gender varchar(50), address varchar(100) not null, blood_group varchar(40),phone_no varchar(80) unique not null);
 create table doctor(doctor_id int primary key, name varchar(70),specialization varchar(80),phone_no varchar(60), email varchar(80), schedule varchar(70));
alter table patient add doctor_id int;
alter table patient add foreign key (doctor_id) references doctor(doctor_id);
 create table appointment(appointment_id int primary key,patient_id int ,doctor_id int,date varchar(50), time varchar(50),foreign key (doctor_id) references doctor(doctor_id), foreign key (patient_id) references patient(patient_id)) ;
alter table appointment add constraint unique_slot unique(date,time);
