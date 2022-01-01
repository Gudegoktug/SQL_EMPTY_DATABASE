use fifa

create table Lig
(
Id int identity(1,1) not null,
Ligname nvarchar(50) not null,
	[CreateDate] DATETIME2(7) NOT NULL,
	[UpdateDate] DATETIME2(7) NULL,
	[DeleteDate] DATETIME2(7) NULL,

constraint PK_Lig primary key (Id)

)

create table Team
(
Id int identity(1,1) not null,
TeamName nvarchar(50) not null,
LigId int not null,
[CreateDate] DATETIME2(7) NOT NULL,
[UpdateDate] DATETIME2(7) NULL,
[DeleteDate] DATETIME2(7) NULL,
constraint PK_Team primary key (Id),
constraint FK_Team_LigId foreign key (LigId) references Lig (Id)
)

create table TechnicalCrew
(Id int identity(1,1) not null,
Manager nvarchar(50) not null,
AssistantCoach nvarchar(50) not null,
TacticalAnalysisSpecialist nvarchar(50) not null,
TeamDoctor nvarchar(50) not null,
Translator nvarchar(50) not null,
Masseur nvarchar(50) not null,
MaterialManager nvarchar(50) not null,
TeamId int not null
constraint PK_TechnicalCrew primary key (Id),
constraint FK_TechnicalCrew_TeamId foreign key (TeamId) references Team (Id)
)

create table Player
(
Id int identity(1,1) not null,
FirstName nvarchar(20) not null,
LastName nvarchar(20) not null,
TeamId int not null,
UniformNumber int not null,
constraint PK_Player primary key (Id),
constraint FK_Player_TeamId foreign key (TeamId) references Team (Id)

)
