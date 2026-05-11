PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Evaluer;
DROP TABLE IF EXISTS Etudiant;
DROP TABLE IF EXISTS Matiere;

CREATE TABLE Etudiant (
    NEtudiant INT PRIMARY KEY,
    Nom TEXT,
    Prenoms TEXT
);

CREATE TABLE Matiere (
    CodeMat TEXT PRIMARY KEY,
    LibelleMat TEXT,
    CoeffeMat REAL
);

CREATE TABLE Evaluer (
    NEtudiant INTEGER,
    CodeMat TEXT,
    DateEval TEXT,
    Note REAL,
    PRIMARY KEY (NEtudiant, CodeMat),
    FOREIGN KEY (NEtudiant) REFERENCES Etudiant (NEtudiant),
    FOREIGN KEY (CodeMat) REFERENCES Matiere (CodeMat)
);

INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (1, 'Doe', 'John');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (2, 'Smith', 'Jane');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (3, 'Brown', 'Charlie');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (4, 'Soa', 'Alice');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (5, 'Wilson', 'David');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (6, 'Johnson', 'Charlie');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (7, 'Williams', 'Emily');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (8, 'Davis', 'Plus');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (9, 'Miller', 'Cahier');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (10, 'Brown', 'Peter');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (11, 'Taylor', 'Sophia');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (12, 'Anderson', 'Michael');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (13, 'Type', 'Analyse');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (14, 'Styve', 'Anna');
INSERT INTO Etudiant (NEtudiant, Nom, Prenoms) VALUES (15, 'Svens', 'Elsa');


INSERT INTO Matiere (CodeMat, LibelleMat, CoeffeMat) VALUES ('MATH101', 'Mathematiques', 2.0);
INSERT INTO Matiere (CodeMat, LibelleMat, CoeffeMat) VALUES ('PHYS101', 'Physique', 2.0);
INSERT INTO Matiere (CodeMat, LibelleMat, CoeffeMat) VALUES ('SVTS101', 'SVT', 1.0);


INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (1, 'MATH101', '2026-04-17', 15.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (2, 'PHYS101', '2026-04-16', 13.0);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (3, 'SVTS101', '2026-04-15', 14.0);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (4, 'MATH101', '2026-04-14', 16.0);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (5, 'PHYS101', '2026-04-13', 12.0);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (6, 'SVTS101', '2026-04-12', 15.0);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (7, 'MATH101', '2026-04-11', 14.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (8, 'PHYS101', '2026-04-10', 13.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (9, 'SVTS101', '2026-04-09', 14.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (10, 'MATH101', '2026-04-08', 15.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (11, 'PHYS101', '2026-04-07', 12.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (12, 'PHYS101', '2026-04-07', 12.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (13, 'PHYS101', '2026-04-07', 12.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (14, 'PHYS101', '2026-04-07', 12.5);
INSERT INTO Evaluer (NEtudiant, CodeMat, DateEval, Note) VALUES (15, 'PHYS101', '2026-04-07', 12.5);

SELECT * FROM Etudiant;
SELECT * FROM Matiere;
SELECT * FROM Evaluer;

--Nombre total des etudiants 
SELECT COUNT(*) AS NombreTotalEtudiants FROM Etudiant;

--Note min et max
SELECT MIN(Note) AS note_la_plus_basse, MAX(Note) AS note_la_plus_haute
FROM Evaluer;

--Les moyenne de chaque etudiant dans chaque matieres



--Moyenne par matiere


--Moyenne generale de chaque etudiants


--Moyenne generale de la promotion


--Les etudiants qui ont une moyenne >= a la moyenne general de la promotion



