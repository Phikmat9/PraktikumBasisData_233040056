create database pertemuan6
use pertemuan6
create table Departements (
DepartementsID int identity (1,1) primary key,
DepartementName varchar(50) NOT NULL
)

create table Projects (
ProjectsID int identity (1,1) primary key,
ProjectName varchar(50) NOT NULL,
DepartementsID int
foreign key (DepartementsID) references Departements (DepartementsID) on update cascade on delete cascade
)

create table Employee(
EmployeeID int identity (1,1) primary key,
Name varchar (50) not null,
DepartementsID int
foreign key (DepartementsID) references Departements (DepartementsID) on update cascade on delete cascade,
ManagerID int 
foreign key (ManagerID) references Employee (EmployeeID) 
)

create table Salaries(
EmployeeID int
foreign key (EmployeeID) references Employee (EmployeeID) on update cascade on delete cascade,
Salaies decimal (10,2)
)

INSERT INTO [dbo].[Departements] ([DepartementName])
VALUES 
	('human resources'),
	('finance'),
	('IT')
	
INSERT INTO [dbo].[Employee] ([Name],[DepartementsID],[ManagerID])
VALUES 
	('hikmat', 1,  null),--managerHR
	('aa', 1, 1),
	('bb', 1, 2),
	('cc', 1, 3),
	('dd', 1, 4),
	('Pandu', 2, null), --managerHR
	('ee', 2, 1),
	('ff', 2, 2),
	('gg', 2, 3),
	('hh', 2, 4),
	('Raharja', 3, null), --managerHR
	('ii', 3, 1),
	('jj', 3, 2),
	('kk', 3, 3),
	('ll', 3, 4)

INSERT INTO [dbo].[Projects] ([ProjectName],[DepartementsID])
VALUES
	('HRD recuiter', 1),
	('HR training', 1),
	('HRD compesation', 1),
	('HRD employee', 2),
	('HRD organizational',2),
	('Human resouce', 2),
	('HRD payroll', 3),
	('manager SDM', 3),
	('Manager pelatihan', 3)

INSERT INTO [dbo].[Salaries] ([EmployeeID], [Salaies])
VALUES
	(1, 2000000000),
	(2, 1000000000),
	(3, 1000000000),
	(4, 1000000000),
	(5, 1000000000),
	(6, 2000000000),
	(7, 1000000000),
	(8, 1000000000),
	(9, 1000000000),
	(10, 1000000000),
	(11, 2000000000),
	(12, 1000000000),
	(13, 1000000000),
	(14, 1000000000),
	(15, 1000000000)

	




