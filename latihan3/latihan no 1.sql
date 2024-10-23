create database latihan3
use latihan3

create table jurusan(
id int primary key,
nama_jurusan  varchar (255)
);

create table wali_dosen(
id int primary key,
NIP int,
nama varchar (255),
tanggal_lahir date,
alamat varchar (255),
no_hp int
);

create table mahasiswa (
id int primary key,
NPM int,
nama varchar (255),
tanggal_lahir date,
alamat varchar (255),
no_hp int,
jurusan_id varchar,  
FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
dosen_wali_id varchar, 
FOREIGN KEY (dosen_wali_id) REFERENCES dosen_wali(id),

);


