create database EskomDB
go
use EskomDB
go
create table UserType (
ID int identity(1,1) primary key,
[Description] varchar(255)
)
go
insert into UserType values ('Admin')
insert into UserType values ('Employee')

create table Gender (
ID int identity(1,1) primary key,
[Description] varchar(255)
)
go
insert into Gender values ('Male')
insert into Gender values ('Female')

create table [User] (
ID int identity(1,1) primary key,
Username varchar(255),
[Password] varchar(255),
Name varchar(255),
Surname varchar(255),
Birthdate datetime,
UsertypeID int foreign key references Usertype(ID),
GenderID int foreign key references Gender(ID)
)
go


insert into [User] values ('barendsteen@gmail.com','6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b','Barend','Steenkamp','',1,1)



create table Station (
ID int identity(1,1) primary key,
Name varchar(255),
[Description] Varchar(255),
GeoLocation varchar(255),
)
go

insert into Station values ('Ankerlig','lol','41,24,12NE4121.1314')
go

Create table Supplier (
ID int identity(1,1) primary key,
Name varchar(255),
[Description] varchar(255),
CellNo varchar(13),
Email varchar(255),
StationID int foreign key references Station(ID)
)
go

insert into Supplier values('KFC','Big coals','0123332266','KFC@Coal.com',1)


create table Powerplant(
ID int identity(1,1) primary Key,
Name Varchar(255),
[Description] varchar(255),
StationID int foreign key references Station(ID)
)
go

insert into PowerPlant Values ('P1','Juan Cena',1)

create table Generator (
ID int identity(1,1) primary key,
[Description] varchar(255),
ReqAmountOfPU int,
CurAmountOfPU int,
PlantID int foreign key references Powerplant(ID)
)
go

insert into Generator values ('Yea its a gen',100,50,1)

Create table Silo (
ID int identity(1,1) primary Key,
[Description] varchar(255),
MaxCapacity int,
PlantID int foreign key References Powerplant(ID)
)
go

insert into Silo values ('PUSH ME TO THE SILO',1000,1)

create table DailyCapacity(
ID int identity(1,1) primary key,
Capacity int,
SiloID int foreign key references Silo(ID)
)
go

insert into DailyCapacity values (100,1)