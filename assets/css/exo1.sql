Pour modifier clé primaire

- d’abord supprimer la contrainte de clé
- ajouter la contrainte de clé

ATLER TABLE ESCARGOT DROP PRIMARY KEY ;
ALTER TABLE ESCARGOT ADD PRIMARY KEY(id, taille) ;

clés étrangères

CREATE TABLE FERME(
  id INTEGER PRIMARY KEY,
  nom VARCHAR(17)
  );
  
 CREATE TABLE ESCARGOT(
  id INTEGER PRIMARY KEY,
   taille INTEGER,
   vitesse INTEGER,
   nom VARCHAR(20),
   ferme INTEGER REFERENCES FERME(id)
  );
  

TP

exercice 1 :

CREATE TABLE PERSONNE (
    id_personne INTEGER PRIMARY KEY,
    num_secu INTEGER(15),
    nom VARCHAR(30),
    prenom VARCHAR(30),
    date_naissance DATE
);

CREATE TABLE COURS(
    id_cours INTEGER,
    id_enseignant INTEGER,
    intitule VARCHAR(30),
    credit FLOAT,
    description TEXT,
	sigle VARCHAR(30)
);

CREATE TABLE SUIVRE(
	id_etudiant INTEGER REFERENCES PERSONNE(id_personne),
	id_cours INTEGER REFERENCES COURS(id_cours)
);


ALTER TABLE COURS(
	ADD PRIMARY KEY (id_cours, id_enseignant)
);