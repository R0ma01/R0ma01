SET search_path = university_schema;

DROP SCHEMA IF EXISTS university_schema CASCADE;
CREATE SCHEMA University_schema;

create domain University_schema.sexeType as char
	check (value in ('M', 'F', 'NB'));

CREATE TABLE IF NOT EXISTS  university_schema.Etudiant (
		sid					VARCHAR(10)		NOT NULL,
		snom 				VARCHAR(20)		NOT NULL,
		sexe				sexetype			default 'NB',
		dateNaissance		date			NOT NULL,
		niveau 				VARCHAR(5)		NOT NULL,
		moyenne				VARCHAR(5)		NOT NULL,
	PRIMARY KEY (sid)
);

ALTER TABLE university_schema.Etudiant ALTER sexe DROP DEFAULT;

CREATE TABLE IF NOT EXISTS University_schema.Dept(
		dID 				VARCHAR(20) 	NOT NULL, 
		nombrephds 			INTEGER			NOT NULL,
	PRIMARY KEY (dID)
);

CREATE TABLE IF NOT EXISTS University_schema.Prof(
		pID					VARCHAR(5)		NOT NULL,
		pnom				VARCHAR(5)		NOT NULL,
		dep 				VARCHAR(20)		NOT NULL,
	PRIMARY KEY (pID),
	FOREIGN KEY(dep) REFERENCES University_schema.Dept(dID)
);

CREATE TABLE IF NOT EXISTS University_schema.Cours(
		cno					VARCHAR(5)		NOT NULL,
		cnom				VARCHAR(50)		NOT NULL,
		dep 				VARCHAR(20)		NOT NULL,
	PRIMARY KEY (cno),
	FOREIGN KEY(dep) REFERENCES University_schema.Dept(dID)
);

CREATE TABLE IF NOT EXISTS University_schema.Section(
		cno					VARCHAR(5)		NOT NULL,
		sectno	  			VARCHAR(5)		NOT NULL,
		pID					VARCHAR(5)			NULL,
	PRIMARY KEY (cno, sectno),
	FOREIGN KEY (cno) REFERENCES university_schema.Cours(cno) ON DELETE CASCADE,	
	FOREIGN KEY (pID) REFERENCES university_schema.Prof(pID) ON DELETE set null
);

CREATE TABLE IF NOT EXISTS University_schema.Inscription(
		sid					VARCHAR(10)		NOT NULL,
		cno 				varchar(5)		NOT NULL,
		sectno	  			VARCHAR(5)		NOT NULL,
		note 				integer			NOT NULL,
	PRIMARY KEY (sid, cno, sectno),
	FOREIGN KEY (cno, sectno) REFERENCES university_schema.Section(cno, sectno) ON DELETE CASCADE,	
	FOREIGN KEY (sid) REFERENCES university_schema.Etudiant(sID) ON DELETE set NULL
);
