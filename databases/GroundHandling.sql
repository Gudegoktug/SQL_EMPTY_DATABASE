use groundservice

create table Country
(
Id int identity(1,1) not null,
CountryName nvarchar(40) not null,
constraint PK_country primary key (Id)
)


create table Airport
(
Id int identity(1,1) not null,
AirportName nvarchar(80) not null,
City nvarchar(50) null,
CountryId int null
constraint PK_Airport primary key (Id),
constraint FK_Airport_CountryId foreign key (CountryId) references Country (Id)
)


create table GroundHandling
(
Id int identity(1,1) not null,
CompanyName nvarchar(50) not null,
constraint PK_Ghandling primary key (Id)
)

create table HandlingAirport
(
Id int identity(1,1) not null,
AirportId int not null,
GroundHandlingId int not null
constraint PK_HandlingAirport primary key (Id),
constraint FK_Hairport_AirportId foreign key (AirportId) references Airport (Id),
constraint FK_Hairport_HandlingId foreign key (GroundHandlingId) references GroundHandling (Id)

)

create table Employees
(
Id int identity(1,1) not null,
FirstName nvarchar(20) not null,
LastName nvarchar(20) null,
Birthdate datetime null,
Email nvarchar(40) null,
Adress nvarchar null,
CompanyId int not null,
constraint PK_employees primary key (Id),
constraint FK_CompanyId foreign key (CompanyId) references GroundHandling (Id)
)

create table Airways
(
Id int identity(1,1) not null,
CompanyName nvarchar(50) not null,
GroundHandlingId int not null
constraint PK_Airways primary key (Id),
constraint FK_Airways_GHID foreign key (GroundHandlingId) references GroundHandling (Id)
)

create table Airplane
(
Id int identity(1,1) not null,
AirplaneType nvarchar(20) not null,
Capacity int null,
AirwaysId int not null
constraint PK_airplane primary key (Id),
constraint FK_Airplane_AirwaysId foreign key (AirwaysId) references Airways (Id)
)
