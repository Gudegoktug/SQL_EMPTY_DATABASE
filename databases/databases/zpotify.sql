use Zpotify

create table Category
(
Id int identity(1,1) not null,
MusicTypes nvarchar(20) not null,
constraint PK_Category primary key (Id)
)

create table Artist
(
Id int identity(1,1) not null,
FirstName nvarchar(20) not null,
LastName nvarchar(20) not null,
NickName nvarchar(30) null,
BirthDate datetime null,
constraint PK_Artist primary key (Id)

)



create table Album
(
Id int identity(1,1) not null,
AlbumName nvarchar(40) not null,
CreateTime datetime not null,
ArtistId int not null,
CategoryId int not null,
constraint PK_Album primary key (Id),
constraint FK_Album_ArtistId foreign key (ArtistId) references Artist (Id),
constraint FK_Album_CategoryId foreign key (CategoryId) references Category (Id)

)

create table Music
(
Id int identity(1,1) not null,
MusicName nvarchar(80) not null,
CreateTime date not null,
ArtistId int not null,
CategoryId int not null,
AlbumId int null,
License bit not null,
constraint PK_Music primary key (Id),
constraint FK_Music_ArtistId foreign key (ArtistId) references Artist (Id),
constraint FK_Music_CategoryId foreign key (CategoryId) references Category (Id),
constraint FK_Music_AlbumId foreign key (AlbumId) references Album (Id)
)

