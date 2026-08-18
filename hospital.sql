create database Hospital;
use Hospital;
create table patient (patient_id int primary key,name varchar(80) not null,dob varchar(60),gender varchar(50), address varchar(100) not null, blood_group varchar(40),phone_no varchar(80) unique not null);
 create table doctor(doctor_id int primary key, name varchar(70),specialization varchar(80),phone_no varchar(60), email varchar(80), schedule varchar(70));
alter table patient add doctor_id int;
alter table patient add foreign key (doctor_id) references doctor(doctor_id); create table appointment(appointment_id int primary key,patient_id int ,doctor_id int,date varchar(50), time varchar(50),foreign key (doctor_id) references doctor(doctor_id), foreign key (patient_id) references patient(patient_id)) ;
alter table appointment add constraint unique_slot unique(date,time);
create table room(room_id int primary key ,room_type varchar(60),room_status varchar(80),price float);
 describe doctor;
 insert into doctor values(1,"ABC","neuro surgery","12334556689","abc@email.com","11-2"),(2,"XYZ","Cardiologist","9876543215","xyzz@email.com","10-3"),(3,"PQR","Orthopedist","12334556689","abc@email.com","11-2");
select*from doctor;
describe patient;
insert into patient values(1,"ABC","3-10-2007","Girl","","o+","7986825761585",1),(2,"XYZ","3-12-2007","Girl","","AB+","7986233431585",3),(3,"PQR","4-11-2007","Boy","","AB-","4566825761585",2);
select*from patient;
 describe appointment;
 insert into appointment values(1,1,1,"18-8-2026","10 am"),(2,3,2,"19-8-2026","11 am"),(3,2,3,"20-8-2026","1 pm");
select*from appointment;
 describe room;
insert into room values(101,"ICU","available",4000),(102,"private","available",5000),(103,"general","available",2000);
select*from room;
update doctor
    -> set email="abcnew@mai.com"
    -> where doctor_id=1;
update doctor
    -> set email="xyznew@mai.com"
    -> where doctor_id=2;
update doctor
    -> set email="pqrnew@mai.com"
    -> where doctor_id=3;
select*from doctor;
