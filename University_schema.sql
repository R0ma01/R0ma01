drop schema if exists University_schema cascade;
create schema if not exists University_schema;
set search_path = University_schema;


create table Etudiant(
sid					varchar(10)					primary key,
snom				varchar(20)				    not null,
--sexe				char(1)				not null,
dateNaissance		date					    not null,
niveau				varchar(5)					not null,
moyenne				varchar(5)					not null
);

create table Dept(
dID					varchar(20)				    primary key,
nombrephds			integer					    not null
);

create table Prof(
pId					varchar(5)					primary key,
pnom				varchar(5)				    not null,
dep					varchar(20)					 not null,
foreign key (dep) references Dept(dID)
);

create table Cours (
cno 				varchar(5)					primary key,
cnom 				varchar(50)				    not null,
dep 				varchar(20) 				not null,
foreign key (dep) references Dept(dID)
);

create table section( 
cno 				varchar(5),
sectno				varchar(5),
pID					varchar(5)                  not null,
primary key (cno, sectno),
foreign key (pID) references Prof(pID),
foreign key (cno) references Cours(cno)
);

create table Inscription (
sid					varchar(10),
cno 				varchar(5),
sectno				varchar(5),
note				integer                     not null,

primary key (sid, cno, sectno),
foreign key (sid) references Etudiant (sid),
foreign key (cno) references section (cno),
foreign key (sectno) references section (sectno)
); 
