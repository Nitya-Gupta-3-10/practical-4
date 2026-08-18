create database Hospital;
use Hospital;
create table patient (patient_id int primary key,name varchar(80) not null,dob varchar(60),gender varchar(50), address varchar(100) not null, blood_group varchar(40),phone_no varchar(80) unique not null);
