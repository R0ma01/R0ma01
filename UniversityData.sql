-- DEPARTEMENT
INSERT INTO university_schema.Dept (dID, nombrephds) VALUES ('genChem', 9);
INSERT INTO university_schema.Dept (dID, nombrephds) VALUES ('gigl', 40);
INSERT INTO university_schema.Dept (dID, nombrephds) VALUES ('Maths', 5);
	
-- Cours
INSERT INTO university_schema.Cours (cno, cnom, dep) VALUES ('105', 'programmation','gigl');
INSERT INTO university_schema.Cours (cno, cnom, dep) VALUES ('200', 'NLP','gigl');
INSERT INTO university_schema.Cours (cno, cnom, dep) VALUES ('304',	'Geometrie 101', 'Maths');
INSERT INTO university_schema.Cours (cno, cnom, dep) VALUES ('305',	'Theoremes en geometrie', 'Maths');
INSERT INTO university_schema.Cours (cno, cnom, dep) VALUES ('306',	'Geometrie intermediaire', 'Maths');
INSERT INTO university_schema.Cours (cno, cnom, dep) VALUES ('307',	'Geometrie','Maths');
	
-- Prof

INSERT INTO university_schema.Prof (pID, pnom, dep) VALUES ('p1', 'AZ', 'gigl');
INSERT INTO university_schema.Prof (pID, pnom, dep) VALUES ('p2', 'MG', 'gigl');
INSERT INTO university_schema.Prof (pID, pnom, dep) VALUES ('p3', 'NZ', 'Maths');
INSERT INTO university_schema.Prof (pID, pnom, dep) VALUES ('p4', 'LH', 'Maths');

-- Section
INSERT INTO university_schema.Section (cno, sectno, pID) VALUES ('105', '1', 'p1');
INSERT INTO university_schema.Section (cno, sectno, pID) VALUES ('105', '2', 'p1');
INSERT INTO university_schema.Section (cno, sectno, pID) VALUES ('305', '1', 'p3');
INSERT INTO university_schema.Section (cno, sectno, pID) VALUES ('305', '2', 'p4');

--ETUDIANTS
INSERT INTO university_schema.Etudiant (snom, sid, sexe, dateNaissance, niveau, moyenne) VALUES ('Simon Nissan', 's1', 'M', date'1998-01-20', '1', '4.2');
INSERT INTO university_schema.Etudiant (snom, sid, sexe, dateNaissance, niveau, moyenne) VALUES ('Alexandra Laplace', 's3', 'F', date'2000-01-20', '1', '2.8');
INSERT INTO university_schema.Etudiant (snom, sid, sexe, dateNaissance, niveau, moyenne) VALUES ('Alex Laplace', 's4', 'F', date'2001-01-20', '2', '3.5');
INSERT INTO university_schema.Etudiant (snom, sid, sexe, dateNaissance, niveau, moyenne) VALUES ('Simon Belanger', 's5', 'M', date'2002-01-20', '2', '3.2');
INSERT INTO university_schema.Etudiant (snom, sid, sexe, dateNaissance, niveau, moyenne) VALUES ('Mark Zuck', 's6', 'M', date'2003-01-20', '2', '1.2');
INSERT INTO university_schema.Etudiant (snom, sid, sexe, dateNaissance, niveau, moyenne) VALUES ('Sophie Yenamarre', 's7', 'M', date'2004-01-20', '3', '4.2');
INSERT INTO university_schema.Etudiant (snom, sid, sexe, dateNaissance, niveau, moyenne) VALUES ('Laurent Passepartout', 's2', 'M', date'1999-01-20', '1', '3.2');

-- INSCRIPTION
INSERT INTO university_schema.Inscription (sid, cno, sectno, note) VALUES ('s3', '105', '1', 90);
INSERT INTO university_schema.Inscription (sid, cno, sectno, note) VALUES ('s2', '105', '1', 60);
INSERT INTO university_schema.Inscription (sid, cno, sectno, note) VALUES ('s1', '105', '2', 70);
INSERT INTO university_schema.Inscription (sid, cno, sectno, note) VALUES ('s5', '105', '2', 70);
INSERT INTO university_schema.Inscription (sid, cno, sectno, note) VALUES ('s5', '305', '2', 100);
INSERT INTO university_schema.Inscription (sid, cno, sectno, note) VALUES ('s6', '305', '2', 65);

	


