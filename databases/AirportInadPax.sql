use CelebiInad

Create table Havayolu
(
Id int identity(1,1)  not null,
Havayolu�sim nvarchar(50) not null
constraint PK_HavayoluId primary key (Id)
)

create table �al��an
(
Id int identity(1,1) not null,
�sim nvarchar(20) not null,
Soyisim nvarchar(20) not null,
Giri�Tarihi datetime,
TelefonNumaras� smallint
constraint PK_Cal�sanId primary key (Id)
)

create table InadSebep
(
Id int identity not null,
Sebep nvarchar(60) not null
constraint PK_SebepId primary key (Id)
)

create table InadYolcu
(
Id int identity(1,1) not null,
�sim nvarchar(30) not null,
Soy�sim nvarchar(30) not null,
�lke nvarchar(30) not null,
Geldi�iHavayoluId int not null,
Geldi�iTarih datetime not null,
U�u�No nvarchar(7) not null,
Gidece�iHavayoluId int not null,
Gidece�iTarih datetime not null,
Gidece�iU�u�No nvarchar(7) not null,
NedenId int not null,
�al��anId int ,
Refakat bit not null,
constraint PK_InadId primary key (Id),
constraint FK_InadId_Cal�sanId foreign key (�al��anId) references �al��an (Id),
constraint FK_InadId_GidenHavayoluId foreign key (Gidece�iHavayoluId) references Havayolu (Id),
constraint FK_InadId_GelenHavayoluId foreign key (Geldi�iHavayoluId) references Havayolu (Id),
constraint FK_InadId_SebepId foreign key (NedenId) references InadSebep (Id)
)

insert into �al��an ()