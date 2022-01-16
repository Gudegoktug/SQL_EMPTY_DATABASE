use CelebiInad

Create table Havayolu
(
Id int identity(1,1)  not null,
HavayoluÝsim nvarchar(50) not null
constraint PK_HavayoluId primary key (Id)
)

create table Çalýþan
(
Id int identity(1,1) not null,
Ýsim nvarchar(20) not null,
Soyisim nvarchar(20) not null,
GiriþTarihi datetime,
TelefonNumarasý smallint
constraint PK_CalýsanId primary key (Id)
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
Ýsim nvarchar(30) not null,
SoyÝsim nvarchar(30) not null,
Ülke nvarchar(30) not null,
GeldiðiHavayoluId int not null,
GeldiðiTarih datetime not null,
UçuþNo nvarchar(7) not null,
GideceðiHavayoluId int not null,
GideceðiTarih datetime not null,
GideceðiUçuþNo nvarchar(7) not null,
NedenId int not null,
ÇalýþanId int ,
Refakat bit not null,
constraint PK_InadId primary key (Id),
constraint FK_InadId_CalýsanId foreign key (ÇalýþanId) references Çalýþan (Id),
constraint FK_InadId_GidenHavayoluId foreign key (GideceðiHavayoluId) references Havayolu (Id),
constraint FK_InadId_GelenHavayoluId foreign key (GeldiðiHavayoluId) references Havayolu (Id),
constraint FK_InadId_SebepId foreign key (NedenId) references InadSebep (Id)
)

insert into Çalýþan ()