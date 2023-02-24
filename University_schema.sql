drop schema if exists University_schema cascade;
create schema if not exists University_schema;
set search_path = University_schema;


create table Etudiant(
sid					varchar(10)					primary key,
snom				varchar(20)				not null,
--sexe				char(1)				not null,
dateNaissance		date					not null,
niveau				integer					not null,
moyenne				real					not null
);

create table Dept(
dID					integer					primary key,
nombrephds			integer					not null
);

create table Prof(
pId					integer					primary key,
pnom				varchar(20)				not null,
dep					integer					not null,
foreign key (dep) references Dept(dID)
);

create table Cours (
cno 				integer					primary key,
cnom 				varchar(20)				not null,
dep 				integer 				not null,
foreign key (dep) references Dept(dID)
);

create table section( 
cno 				integer,
sectno				integer,
pID					integer,
primary key (cno, sectno),
foreign key (pID) references Prof(pID),
foreign key (cno) references Cours(cno)
);

create table Inscription (
sid					integer,
cno 				integer,
sectno				integer,
note				integer
); 


